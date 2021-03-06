Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :projects, only: [:index]
  resources :posts, only: [:index]
  resources :contact_requests, only: %i[index new create]
end
