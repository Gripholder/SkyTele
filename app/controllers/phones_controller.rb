class PhonesController < ApplicationController
  def index
    @phones = Phone.all
  end
  def new
    @phone = Phone.new
  end
  def show
    @phone = Phone.find(params[:id])
  end
  def create
    @phone = current_user.phones.create!(phone_params.merge(carrier: Carrier.first))
    redirect_to phones_path
  end
  def edit
  end
  def update
  end
  def destroy
  end
  private
  def phone_params
    params.require(:phone).permit(:name, :brand, :model)
  end
end
