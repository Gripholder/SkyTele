class PagesController < ApplicationController
  def home
  end
  def products
    @carriers = User.first.carriers.all
    @phones = Phone.all
  end
  def about
  end
end
