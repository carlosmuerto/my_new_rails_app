# frozen_string_literal: true

Rails.application.routes.draw do
  get 'root/index'

  namespace :api do
    namespace :v1 do
      resources :greeting, only: %i[index], defaults: { format: 'json' }
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'root#index'
end
