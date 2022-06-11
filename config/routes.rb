Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :patients, only: %i[new create edit update] do
    resources :bookings, only: %i[new create]
    resources :reviews, only: %i[new create index]
  end

  resources :carers, only: %i[index]
end
