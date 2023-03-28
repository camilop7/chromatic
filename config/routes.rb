Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "my_events", to: "pages#my_events"
  get "profile", to: "pages#profile"
  get "search_events", to: "pages#search_events"
  get '/events/genre/:genre', to: 'events#index', as: 'events_by_genre'
  get "videocall", to: 'pages#videocall'
  get '/friends/:id', to: 'friendship#show', as: 'friend'

  resources :events, only: [:index, :show, :create, :destroy] do
    resources :user_events, only: :create
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :user_events, only: :destroy
  resources :friendships, only: [:create, :destroy]
  resources :users, only: :show
end
