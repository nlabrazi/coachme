Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dashboard", to: 'dashboards#dashboard'

  resources :coach_activities, only: [:index, :show, :new, :create] do
    resources :bookings
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/search", to:'searches#search'
  get "/activities", to:'searches#browse'
end
