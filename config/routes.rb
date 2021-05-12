Rails.application.routes.draw do
  resources :faq_items
  resources :faq_sections
  resources :pricing_capabilities
  resources :capabilities
  resources :pricing_items
  resources :pricing_sections
  resources :team_items
  resources :team_sections
  resources :portfolio_items
  resources :portfolio_categories
  resources :portfolio_sections
  resources :testimonial_items
  resources :testimonial_sections
  resources :feature_items
  resources :feature_sections
  resources :grid_service_items
  resources :horizon_service_items
  resources :service_sections
  resources :about_us_sections
  resources :clients
  resources :sections
  resources :settings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "visitors#index"
  post 'visitors#submit_contact_form'
end
