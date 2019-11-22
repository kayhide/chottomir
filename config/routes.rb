Rails.application.routes.draw do
  root to: 'home#index'

  namespace :helper do
    resource only: [:show], controller: :home
  end
end
