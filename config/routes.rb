Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'
  get 'testing', to: 'pages#test'
  get 'index', to: 'carers#index'
  resources :users, only: %i[edit update]

  resources :carers, except: :destroy do
    resources :bookings
    resources :reviews, only: %i[index show]
  end
  resources :bookings do
    member do
      patch :update_status
    end
    get 'call', to: 'bookings#call'
    post 'call', to: 'bookings#call'
    get 'map', to: 'bookings#map'
    resources :reviews, except: %i[index show]
  end

  resources :patients, except: %i[destroy index] do
    resources :bookings, only: %i[index show call]
    resources :reviews, only: %i[new create index show]
  end
end
