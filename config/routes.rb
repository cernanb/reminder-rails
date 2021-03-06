Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "application#home"
  resources :children do
    resources :events
  end
  resources :users, :controller => "users/users" do
    resources :children, only: [:index]
  end
  resources :events, only: [:show]
  resources :caretakers
  get "test/twilio", to: "application#test"
end
