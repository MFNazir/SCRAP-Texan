Rails.application.routes.draw do
  resources :employees
  resources :employee_types
  resources :employee_statuses
  resources :countries
  resources :state_provinces
  resources :makes
  resources :manufacturers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
