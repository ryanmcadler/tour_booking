Rails.application.routes.draw do
  resources :user_tour_preferences, only: [:new, :create, :edit, :update, :show]
  resources :user_contact_infos, only: [:new, :create]
  resources :users, only: [:new, :create, :show]

  root to: "users#new"
end
