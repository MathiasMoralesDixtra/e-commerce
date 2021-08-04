Rails.application.routes.draw do
  devise_for :users, controllers: {registrations:'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"

  resources :products, only: [:index, :show]

  scope :admin do 
    resources :products, controller: :product_admins , as: :product_admins
  end
end
