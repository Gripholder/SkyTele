class CarriersController < ApplicationController
def index
  if !current_user
    redirect_to new_user_session
  else
  @carriers = Carrier.all
end
end
def new
  @carrier = Carrier.new
end
def show
  @carrier = Carrier.find(params[:id])
  @phones = @carrier.phones
end
def create
  @carrier = Carrier.create!(carrier_params.merge(user: current_user))
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
