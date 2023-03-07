Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "my_events", to: "pages#my_events"

  resources :events
  resources :chatrooms, only: :show
end
