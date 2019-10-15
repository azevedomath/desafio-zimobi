Rails.application.routes.draw do
  resources :anuncios
  root 'anuncios#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
