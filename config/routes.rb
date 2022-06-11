Rails.application.routes.draw do
  get 'users/edit'
  get 'users/update'
  
  resources :booking do
    resources :review
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
