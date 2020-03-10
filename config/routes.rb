Rails.application.routes.draw do
  resources :invoice_statuses
  resources :invoice_types
  resources :customer_vehicles
  resources :vehicle_statuses
  resources :customers
  resources :customer_statuses
  resources :customer_types
  resources :employees
  resources :employee_types
  resources :employee_statuses
  resources :countries
  resources :state_provinces
  resources :makes
  resources :manufacturers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
