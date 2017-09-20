class PagesController < ApplicationController
  def home
  end
  def products
    @carriers = Carrier.all
    @phones = Phone.all
  end
  def about
  end
end
