Rails.application.routes.draw do
  root to: 'home#index'

  namespace :doctor do
    resource only: [:show], controller: :home
    resources :incidents
    resources :sitters do
      resources :incidents, only: [:index, :show]
    end
  end
  namespace :sitter do
    resource only: [:show], controller: :home
    resources :incidents
  end
end
