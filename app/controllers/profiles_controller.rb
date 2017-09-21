class ProfilesController < ApplicationController
  def index
    if current_user.profile.blank?
      flash[:notice] = "Profile information is unavailable, please enter your info.."
      redirect_to new_profile_path
    else
      @profile = current_user.profile
      redirect_to profile_path(@profile)
    end
  end
  def show
    if current_user
      @user = current_user
      @profile = current_user.profile
    end
  end
    def new
      @profile = Profile.new
    end

    def create
      @profile = Profile.create!(profile_params.merge(user: current_user))
      redirect_to profile_path(@profile)
    end
    private
    def profile_params
      params.require(:profile).permit(:username, :firstname, :lastname, :age, :photo)
    end
  end
