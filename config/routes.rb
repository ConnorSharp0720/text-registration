require 'sidekiq/web'

Rails.application.routes.draw do
  resources :pricing, only:[:index]
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'home#index'
  resources :subscriptions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
