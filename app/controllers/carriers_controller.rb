class CarriersController < ApplicationController
def index
  if !current_user
    redirect_to new_user_session
  else
  @carriers = current_user.carriers.all
  @user = user_session_path
end
end
def new
  @carrier = current_user.carriers.new
  @user = current_user
  # @carrier = current_user.carriers.new
end
def show
  @carrier = Carrier.find(params[:id])
  @phones = @carrier.phones
end
def create
  @user = current_user
 @existing_carrier = Carrier.find(params[:carrier][:id])
 if @user.carriers.where(name: @existing_carrier.name).blank?
 #create new object with attributes of existing record
 # @carrier = @user.carriers.create(params[@existing_carrier])
 @carrier = @user.carriers.create(name: @existing_carrier.name, logo_url: @existing_carrier.logo_url)
 else
   flash[:alert] = "You are already subscibed to this carrier"
 end
 # @carrier = Carrier.find(params[:id])
 #create new object with attributes of existing record
 # @post = Post.new(@existing_post.attributes)
 # render "your_post_form"
  # @user = current_user
  # @carrier = @user.carriers.create!(carrier_params)
  # current_user.carriers.create!(@carrier)
  # @carrier = Carrier.create!(carrier_params.merge(user: current_user))
  redirect_to carriers_path
end
def edit
  @carrier = Carrier.find(params[:id])
end
def update
  @carrier = Carrier.find(params[:id])
  if @carrier.user == current_user
    @carrier.update(carrier_params)
    flash[:alert] = "You have successfully updated the carrier"
  else
    flash[:alert] = "You are not authorized to edit this carrier"
  end
  redirect_to carrier_path(@carrier)
end
def destroy
  @carrier = Carrier.find(params[:id])
  if @carrier.user == current_user
    @carrier.destroy
    flash[:alert] = "You have removed a carrier from the account"
  else
    flash[:alert] = "You are not authorized to remove this carrier"
  end
  redirect_to carriers_path
end
private
def carrier_params
  params.require(:carrier).permit(:name, :logo_url)
end
end
