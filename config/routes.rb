Rails.application.routes.draw do
  resources :grid_service_items
  resources :horizon_service_items
  resources :service_sections
  resources :about_us_sections
  resources :clients
  resources :sections
  resources :settings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "visitors#index"
end
