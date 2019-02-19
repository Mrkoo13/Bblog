Rails.application.routes.draw do

  root 'posts#index', as:'home'

   get 'about' =>  'pages#about', as:'about'

   get 'new' =>  'pages#new'


 resources :posts do
   resources :comments
end
end
