Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :donors, path: 'donors', controllers: {
    registrations: 'donors/registrations'
  }
  namespace :donors do
    root to: 'dashboard#index'

    resources :donations
    resources :blood_collection_facilities, only: %i[index show]
    resources :blood_alerts, only: %i[index show]
    resources :announcements, only: %i[index show]
  end

  devise_for :medical_entities, path: 'medical_entities', controllers: {
    registrations: 'medical_entities/registrations'
  }
  namespace :medical_entities do
    root to: 'dashboard#index'

    resources :blood_collection_facilities
    resources :donations, only: %i[index show edit update destroy]
    resources :blood_alerts
    resources :announcements
  end
end
