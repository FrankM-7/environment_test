Rails.application.routes.draw do
  root 'home#index'
  resources :books
  get '/hi/there'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
