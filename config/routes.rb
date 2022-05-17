Rails.application.routes.draw do
  root to: "home#index"

  devise_for :users
    resource :users
end
