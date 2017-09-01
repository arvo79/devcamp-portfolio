Rails.application.routes.draw do
	
  devise_for :users
  resources :portfolios, except: [:show]
  get 'no1', to: 'portfolios#no1'
  get 'no9', to: 'portfolios#no9'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root 'portfolios#index'

end
