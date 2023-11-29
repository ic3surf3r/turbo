Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations"}
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :clubs do
    get 'invite/:invite_token', to: "club_members#new"
    resources :club_members, only: %i[index]
    resources :teams, only: %i[index new create]
  end

  resources :teams, only: %i[show edit update destroy] do
    resources :team_members, only: %i[index new create]
  end
  resources :club_members, only: %i[destroy edit update]
  resources :team_members, only: %i[destroy edit update]

end
