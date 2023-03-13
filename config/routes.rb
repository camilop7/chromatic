Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "my_events", to: "pages#my_events"
  get "profile", to: "pages#profile"
  get "search_events", to: "pages#search_events"


  resources :events do
    post "create_user_event", to: "events#create_user_event"
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end
  resources :friendships, only: [:create, :update, :destroy, :index]
end
