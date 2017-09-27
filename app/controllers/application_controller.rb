class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #Good control of authentication
  before_action :authenticate_user!, :except => [:home, :products, :about, :contact]
end
