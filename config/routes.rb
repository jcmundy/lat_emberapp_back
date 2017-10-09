Rails.application.routes.draw do
  jsonapi_resources :flavors
  jsonapi_resources :yogurts
  jsonapi_resources :gelatos
  resources :flavors
  resources :yogurts
  resources :gelatos
  resources :contacts
  namespace :admin do
    jsonapi_resources :flavors
    jsonapi_resources :yogurts
    jsonapi_resources :gelatos
    resources :flavors
    resources :yogurts
    resources :gelatos
    resources :contacts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
