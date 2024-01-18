Rails.application.routes.draw do
  resources :notifications, only: [:create]
  mount ActionCable.server => '/cable'
 end