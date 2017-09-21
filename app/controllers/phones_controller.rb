class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end
  def new
    @user = current_user
    @usercarrier = Carrier.find(params[:carrier_id])
    @carrier = @user.carriers.find_by(name: @usercarrier.name)
    @phone = @carrier.phones.new
    @admin = User.first.carriers.find_by(name: @carrier.name).phones.all
  end
  def show
    @phone = Phone.find(params[:id])
    @carrier = Carrier.find(params[:carrier_id])
  end
  def create
    @user = current_user
    @carrier = @user.carriers.find(params[:carrier_id])
    @admin = User.first.carriers.find_by(name: @carrier.name).phones.all
    @existing_phone = Phone.find(params[:phone][:id])
    if @carrier.phones.where(model: @existing_phone.model).blank?
      @phone = @carrier.phones.create!(name: @existing_phone.name, brand: @existing_phone.brand, model: @existing_phone.model, photo_url: @existing_phone.photo_url, carrier_id: @existing_phone.carrier_id)
    else
      flash[:alert] = "You already own this phone."
    end
    redirect_to carrier_path(@carrier)
  end
  def edit
    @phone = Phone.find(params[:id])
    @carrier = @phone.carrier
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
    if @carrier.user == current_user
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
