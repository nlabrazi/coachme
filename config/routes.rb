Rails.application.routes.draw do
  get 'messages/create'
  get 'rooms/show'
  # get 'reviews/new'
  # get 'reviews/create'
  devise_for :users

  root to: 'pages#home'
  get "/dashboard", to: 'dashboards#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/search", to: 'searches#search'
  get "/activities", to:'searches#browse'

  resources :coach_activities, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :show] do
      put "/validate", to: "bookings#validate"
      put "/refused", to: "bookings#refused"
    end
  end
  resources :bookings, only: [:show] do
    resources :reviews, only: [:create, :new]
  end
  resources :rooms, only: [:show] do
    resources :messages, only: [:create]
  end
end
