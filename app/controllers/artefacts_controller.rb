class ArtefactsController < ApplicationController
  before_action :set_artefact, only: %i[ show edit update destroy ]


  # GET /artefacts or /artefacts.json
  def index
    @artefacts = Artefact.all
  end

  # GET /artefacts/1 or /artefacts/1.json
  def show
  end

  # GET /artefacts/new
  def new
    @artefact = Artefact.new
    @artefact.category.build
  end

  # GET /artefacts/1/edit
  def edit
  end

  # POST /artefacts or /artefacts.json
  def create
    @artefact = Artefact.new(artefact_params)
    @artefact.loaner_id = current_user.id
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
