Rails.application.routes.draw do


  
  get '/browsing' =>'anuncios#browse', :as => :browse
  get '/emailing/:id' =>'anuncios#send_email', :as => :send_email
  devise_for :users
  resources :anuncios
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
