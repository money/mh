# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :accounts
  root to: 'home#show'
  resources :pages, param: :slug do
    resources :sections
  end
  resources :sections, only: %i[edit update]
  get '/:slug', to: 'pages#show'
  resources :cards, only: :edit
end
