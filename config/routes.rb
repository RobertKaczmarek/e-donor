Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :donors, path: 'donors', controllers: {
    registrations: 'donors/registrations',
    sessions: 'donors/sessions',
    passwords: 'donors/passwords'
  }
  namespace :donors do
    root to: 'dashboard#index'
  end

  devise_for :medical_entities, path: 'medical_entities', controllers: {
    registrations: 'medical_entities/registrations'
  }
  namespace :medical_entities do
    root to: 'dashboard#index'
  end
end
