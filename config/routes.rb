Rails.application.routes.draw do

  get 'errors/not_found'
  get 'errors/internal_server_error'

  get "/404", :to => "errors#not_found", :via => :all
  #get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_server_error", :via => :all

  get 'messages/create'
  get 'rooms/show'
  get 'reviews/create'
  get 'payments/create'

  devise_for :users

  root to: 'pages#home'
  get "/dashboard", to: 'dashboards#dashboard'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/search", to: 'searches#search'
  get "/activities", to:'searches#browse'

  resources :coach_activities, only: [:index, :show] do
    resources :bookings, only: [:create, :show] do
      put "/validate", to: "bookings#validate"
      put "/refused", to: "bookings#refused"
    end
    resources :bookings, only: [:destroy, :update]
  end
  resources :bookings, only: [:show] do
    resources :reviews, only: [:create, :new]
    resources :payments, only: [:create, :new]
  end

  resources :rooms, only: [:show] do
    resources :messages, only: [:create]
  end

end
