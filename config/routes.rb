Rails.application.routes.draw do
  devise_for :users, path: "auth", path_names: {
    sign_in: "login",
    sign_out: "logout",
    password: "secret",
    confirmation: "verification",
    unlock: "unblock",
    registration: "register"
  }

  resources :properties
  resources :sponsors, only: [:index]
  resources :campaigns
  resources :sponsorships
  resources :clicks
  resources :impressions

  authenticated :user do
    root to: "dashboard#index"
  end

  root to: "home#index"
end
