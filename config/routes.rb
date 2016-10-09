Rails.application.routes.draw do
  resources :channels, only: [:index, :show]
  resources :shows, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :schedules, only: [:index, :show]
end
