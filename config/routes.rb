Rails.application.routes.draw do
  get 'users/edit'
  get 'users/update'
  get 'review/new'
  get 'review/create'
  get 'review/update'
  get 'review/edit'
  get 'review/destroy'
  get 'review/index'
  get 'review/show'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/update'
  get 'bookings/edit'
  get 'bookings/destroy'
  get 'bookings/index'
  get 'bookings/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
