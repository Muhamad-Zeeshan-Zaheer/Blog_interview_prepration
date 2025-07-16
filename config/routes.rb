Rails.application.routes.draw do
  root "articles#index"
  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # routes for articles crud operation
  resources :articles do
    resources :comments
  end
end
