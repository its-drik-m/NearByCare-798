Rails.application.routes.draw do
  devise_for :users # , controllers: { registrations: "registrations" }
  root to: 'pages#home'
  resources :users, only: %i[edit update]
  get 'testing', to: 'pages#test'
  resources :carers, only: %i[index edit update show]
  resources :patients, only: %i[edit update show]
  resources :reviews, only: %i[new show destroy]
  # get 'users/edit'
  # get 'users/update'
  # resources :booking do
  #   resources :review
  # end
  # resources :users, only: %i[edit update] do
  #  resources :patients, only: %i[edit update show] do
  #  resources :bookings, only: %i[new create index show destroy]
  #  resources :reviews, only: %i[new create index show destroy]
  # end
  # resources :carers, only: %i[index edit update show] do
  #   resources :bookings, only: %i[new create index show destroy]
  #   resources :reviews, only: %i[new create index show destroy]
  # end
  # end

end
