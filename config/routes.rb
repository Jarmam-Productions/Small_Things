Rails.application.routes.draw do
  devise_for :users

  resources :activities
  resources :categories
  resources :category_users
  resources :reviews

  resources :bookings do
    resources :reviews, only: [ :new, :create ]
  end

  get 'dashboard', to: 'users#dashboard'
  root to: 'users#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
