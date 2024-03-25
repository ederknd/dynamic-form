Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "questions#index"

  resources :answers

  resources :questions do
    resources :options, controller: 'questions/options'
  end

  namespace :questions do
    resources :input_types, only: %i[ update ]
    resources :collections, except: %i[ index ]
    resources :simples, except: %i[ index ]
  end
end
