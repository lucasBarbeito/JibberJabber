Rails.application.routes.draw do
  resources :tweets
  root to: "tweets#index"

  devise_for :users
  resource :users do
    resource :tweet
  end
end
