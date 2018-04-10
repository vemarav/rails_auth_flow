Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      post 'auth_user', to: 'authentication#authenticate_user'
    end
  end
end
