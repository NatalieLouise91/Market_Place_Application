class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]

  # ^^^ before action callback to set the profile ^^^

  # Show all profiles in an index 
  def index
    @profiles = Profile.order(institution_name: :asc).preload(:loaner, :borrower, :location)
  end

  # Show individual profiles through identifying their id
  def show
    @profile = Profile.find(params[:id])
  end

  # Method to create a new profile. This includes building a new location, loaner and borrower, which are linked to profile entity
  def new
    @profile = Profile.new
    @profile.build_location
    @profile.build_loaner
    @profile.build_borrower
  end

  # Method to edit a profile
  def edit
  end

  # Method to create a profile
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # Method to update a profile
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # Method to delete a profile
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Profile params required for the profile entity including attributes for location, loaner and borrower entities
    def profile_params
      params.require(:profile).permit(:institution_name, :description, :lending_policy, :user_id, :picture, location_attributes: [:id, :street, :state, :postcode, :location, :profile_id], loaner_attributes: [:id, :name, :phone], borrower_attributes: [:id, :name, :phone])
    end
end
