Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/games/prueba' => 'games#prueba', as: 'prueba'
  get '/games/carrusel' => 'games#carrusel', as: 'carrusel'
  resources :games
  root to: 'main#main'
  resources :posts, except: :index
  resources :pictures
  get '/blog' => 'posts#index', as: 'blog'
  get '/about' => 'main#about', as: 'about'
  get '/in-development' => 'main#in_development', as: 'in_development'
  post '/contact' => 'contact#enviar', as: 'send'
  get '/contact' => 'contact#contact', as: 'contact'
  get '/users/creaTemp' => 'users#creaTemp'
end
