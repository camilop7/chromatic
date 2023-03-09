Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "my_events", to: "pages#my_events"
  get "profile", to: "pages#profile"

  resources :events
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
