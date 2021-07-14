Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :products, only: [:index, :show]

  scope :admin do 
    resources :products_admin
  end
end
