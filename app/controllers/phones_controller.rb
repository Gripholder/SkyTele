class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end
  def new
    @carrier = Carrier.find(params[:carrier_id])
    @phone = @carrier.phones.new
  end
  def show
    @phone = Phone.find(params[:id])
  end
  def create
    @carrier = Carrier.find(params[:carrier_id])
    if @carrier.user == current_user
    @phone = @carrier.phones.create(phone_params)
    flash[:alert] = "New phone was added successfully!"
  else
    flash[:alert] = "Failed to add new phone"
  end
  redirect_to carrier_path(@carrier)
end
  def edit
    @phone = Carrier.find(params[:carrier_id]).phones.find(params[:id])
    @carrier = Carrier.find(params[:carrier_id])
    if @carrier.user != current_user
      flash[:alert] = "You are not authorized to edit this account information"
      redirect_to carriers_path
    end
  end
  def update
    @phone = Carrier.find(params[:carrier_id]).phones.find(params[:id])
    @carrier = Carrier.find(params[:carrier_id])
    if @phone.user == current_user
      @phone.update(phone_params)
      flash[:notice] = "Your edits were updated successfully"
      redirect_to carrier_phone_path(@phone)
    else
      flash[:alert] = "You are not authorized to make changes to this account"
      redirect_to carrier_phones_path
    end
  end
  def destroy
    @carrier = Carrier.find(params[:carrier_id])
    @phone = @carrier.phones.find(params[:id])
    if @phone.user == current_user
    @phone.destroy
  else
    flash[:alert] = "You are not authorized to make changes to this account"
  end
  redirect_to carrier_path(@carrier)
end
  private
  def phone_params
    params.require(:phone).permit(:name, :brand, :model, :photo_url)
  end
end
