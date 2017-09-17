Rails.application.routes.draw do
  devise_for :users
  root to: "carriers#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :carriers do
    resources :phones
  end
end
