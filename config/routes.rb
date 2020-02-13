Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'home#home'
  get '/team', to: 'team#team'
  get '/contact', to: 'contact#contact'
  resources :gossips
  resources :inscription
end
