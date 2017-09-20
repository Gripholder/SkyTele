Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => "pages#home", page:"home"
  get '/products' => "pages#products", page:"products"
  get '/about' => "pages#about", page:"about"

  resources :users, only: [:show]
  resources :carriers do
    resources :phones
  end

end
