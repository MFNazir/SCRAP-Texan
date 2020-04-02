Rails.application.routes.draw do
  get 'reports/index'
  get 'management/index'
  get 'reports/empstatus'
  get 'reports/empinactive'
  get 'reports/empfired'
  get 'reports/custactive'
  get 'reports/contactivebuyer'
  get 'reports/custgain'
  get 'reports/activesellers'
  get 'reports/ghostemp'
  get 'reports/bancust'
  get 'index/index'
  resources :line_items
  resources :metal_items
  resources :invoices
  resources :metal_types
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

  root to:  'index#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
