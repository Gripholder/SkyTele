class ProfilesController < ApplicationController
  def index
    if current_user.profile_id.blank?
      redirect_to new_profile_path
    else
      redirect_to profile_path
    end
  end
  def show
    @user = current_user
    @profile = Profile.find(params[:id])
  end
  def new
    @profile = Profile.new
  end
  def create
  @profile = Profile.create!(profile_params)
  redirect_to profile_path(@profile)
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def profile_params
  params.require(:profile).permit(:username, :firstname, :lastname, :age, :photo)
  end
end
