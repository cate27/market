Rails.application.routes.draw do

  devise_for :users
  #controller pages
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  get 'about' => 'pages#about'
  
end
