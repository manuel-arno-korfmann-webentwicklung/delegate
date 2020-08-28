Rails.application.routes.draw do
  resources :change_request_steps
  resources :change_requests
  root to: 'apps#index'
  resources :apps
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
