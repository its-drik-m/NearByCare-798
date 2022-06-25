Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'
  get 'testing', to: 'pages#test'
  resources :users, only: %i[edit update]

  resources :carers, except: :destroy do
    resources :bookings, only: %i[index show]
    resources :reviews, only: %i[index show create]
  end

  resources :patients, except: %i[destroy index] do
    resources :bookings, only: %i[new create index show]
    resources :reviews, only: %i[new create index show]
  end
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
