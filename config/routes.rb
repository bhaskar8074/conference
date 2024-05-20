Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show]
  resources :conferences do
    resources :registrations, only: [:create, :destroy]
    resources :feedbacks, only: [:create]
  end

  root "conferences#index"
end