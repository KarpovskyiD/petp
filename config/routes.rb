# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/articles', to: 'articles#index'
  get '/logs', to: 'logs#get_logs'
end
