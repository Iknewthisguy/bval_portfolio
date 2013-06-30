BvalPortfolio::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  match 'home/exhibit' => 'home#exhibit'
  match 'home/portfolio' => 'home#portfolio'

end