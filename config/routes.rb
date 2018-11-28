Rails.application.routes.draw do
  resources :equipos
  resources :fabricantes
  resources :tipo_equipos
  # get '/home', to: 'home#index'
  get '/', to: 'home#index'
end
