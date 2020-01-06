Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :donors, path: 'donors', controllers: {
    registrations: 'donors/registrations'
  }
  namespace :donors do
    root to: 'dashboard#index'
  end

  devise_for :medical_entities, path: 'medical_entities', controllers: {
    registrations: 'medical_entities/registrations'
  }
  namespace :medical_entities do
    root to: 'dashboard#index'

    resources :blood_collection_facilities
  end
end
