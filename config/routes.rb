Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :events do
    resources :events_chatrooms, only: [:show] do
      resources :messages, only: [:index, :new, :create, :destroy]
    end
  end
end
