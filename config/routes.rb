Rails.application.routes.draw do
  get "properties/index"
  get "properties/show"
  get "properties/new"
  get "properties/edit"
  devise_for :users, path: "auth", path_names: {
    sign_in: "login",
    sign_out: "logout",
    password: "secret",
    confirmation: "verification",
    unlock: "unblock",
    registration: "register"
  }

  root to: "home#index"
end
