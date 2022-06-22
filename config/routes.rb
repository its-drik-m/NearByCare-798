Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'
  get 'testing', to: 'pages#test'
  resources :users, only: %i[edit update]
  resources :carers, except: :destroy
  resources :patients, except: %i[destroy index]
  get 'patients/:id/destination', to: 'patients#destination', as: 'destination'
  get 'carers/:id/bookings', to: 'carers#bookings', as: 'bookings'
    # resources :users, only: %i[edit update] do
  #  resources :patients, only: %i[edit update show] do
  #  resources :bookings, only: %i[new create index show destroy]
  #  resources :reviews, only: %i[new create index show destroy]
  # end
  #  resources :carers, only: %i[index edit update show] do
  #  resources :bookings, only: %i[new create index show destroy]
  #  resources :reviews, only: %i[new create index show destroy]
  # end
end
