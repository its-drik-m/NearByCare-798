Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: 'pages#home'
  get 'testing', to: 'pages#test'
  get 'index', to: 'carers#index'
  resources :users, only: %i[edit update]

  resources :carers, except: :destroy do
    resources :bookings do
      resources :reviews, except: %i[index show destroy]
    end
    resources :reviews, only: %i[index show]
  end
  resources :bookings do
    get 'call', to: 'bookings#call'
  end

  resources :patients, except: %i[destroy index] do
    resources :bookings, only: %i[index show]
    resources :reviews, only: %i[new create index show]
  end
end
