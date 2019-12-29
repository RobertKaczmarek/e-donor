Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :donors, path: 'donors', controllers: {
    registrations: 'donors/registrations'
  }

  namespace :donors do
    root to: 'dashboard#index'
  end
end
