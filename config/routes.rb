Rails.application.routes.draw do
  resources :logged_games, except: [:edit, :destroy]
  devise_for :users
  root to: "users#index"
  get '/history', to: 'logged_games#index'
  get '/log',     to: 'logged_games#new'
end
