Rails.application.routes.draw do

  devise_for :users
  root 'posts#index', as:'home'
  get 'new' =>  'pages#new'

  resources :posts do
   resources :comments , only: [:create]
  end
end
