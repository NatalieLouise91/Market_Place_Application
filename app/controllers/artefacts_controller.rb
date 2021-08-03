class ArtefactsController < ApplicationController
  before_action :set_artefact, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]


  # GET /artefacts or /artefacts.json
  def index
    @artefacts = Artefact.all
  end

  # GET /artefacts/1 or /artefacts/1.json
  def show
    stripe_session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      client_reference_id: current_user ? current_user.id : nil,
      customer_email: current_user ? current_user.email : nil,

      line_items: [{ 
        price_data: {
          unit_amount: @artefact.price.to_i * 100,
          currency: 'aud',
          product_data: { 
            name: @artefact.name,
            description: @artefact.description
          },
        },
        quantity: 1
      }],

      payment_intent_data: {
        metadata: {
          artefact_id: @artefact.id,
          borrower_id: current_user ? current_user.profile.borrower.id : nil,
          loaner_id: current_user ? @artefact.loaner.id : nil
        }
      },
      mode: 'payment',
      success_url: "#{root_url}payments/success",
      cancel_url: "#{root_url}artefacts"
    )

    @session_id = stripe_session.id
    pp stripe_session
  end

  # GET /artefacts/new
  def new
    @artefact = Artefact.new
    @artefact.build_category
  end

  # GET /artefacts/1/edit
  def edit
  end

  # POST /artefacts or /artefacts.json
  def create
    @artefact = Artefact.new(artefact_params)
    @artefact.loaner_id = current_user.profile.loaner.id
    respond_to do |format|
      if @artefact.save
        format.html { redirect_to @artefact, notice: "Artefact was successfully created." }
        format.json { render :show, status: :created, location: @artefact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artefact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artefacts/1 or /artefacts/1.json
  def update
    respond_to do |format|
      if @artefact.update(artefact_params)
        format.html { redirect_to @artefact, notice: "Artefact was successfully updated." }
        format.json { render :show, status: :ok, location: @artefact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artefact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artefacts/1 or /artefacts/1.json
  def destroy
    @artefact.destroy
    respond_to do |format|
      format.html { redirect_to artefacts_url, notice: "Artefact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artefact
      @artefact = Artefact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artefact_params
      params.require(:artefact).permit(:name, :artist, :date, :description, :dimensions, :price, :loaner_id, :picture, category_attributes: [:material, :condition, :description, :document])
    end
end
