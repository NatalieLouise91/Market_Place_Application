class ArtefactsController < ApplicationController
  before_action :set_artefact, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # ^^^ before action callback to set the artefact and authenticate the user to allow stripe payment process ^^^

  # Show all artefacts in an index page 
  def index
    @artefacts = Artefact.order(name: :asc).preload(:loaner)
  end

  # Show individual artefact and initialize a stripe session. Setting line items for payment checkout, quantity to be sold, grabbing payment intent metadata for Loan_Order Creation, and diverting to either cancel/success url.
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
      success_url: "#{root_url}payments/success?artefactId=#{@artefact.id}",
      cancel_url: "#{root_url}artefacts"
    )

    @session_id = stripe_session.id
    pp stripe_session
  end

  # Method to create a new artefact and also building a new category attached to that artefact
  def new
    @artefact = Artefact.new
    @artefact.build_category
  end

  # Method to edit existing artefact
  def edit
  end

  # Method to create a new artefact through grabbing artefact params and connecting the current user loaner id with the artefact
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

  # Updating artefact and associated foreign keys, category
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

  # Destroying artefact and associated foreign keys, category
  def destroy
    @artefact.destroy
    respond_to do |format|
      format.html { redirect_to artefacts_url, notice: "Artefact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Method for before action callback to set artefact
    def set_artefact
      @artefact = Artefact.find(params[:id])
    end

    # Required params for artefact including category attributes
    def artefact_params
      params.require(:artefact).permit(:name, :artist, :date, :description, :dimensions, :price, :loaner_id, :picture, category_attributes: [:material, :condition, :description, :document])
    end
end
