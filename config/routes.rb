Rails.application.routes.draw do
  resources :menus
  resources :restaurants
  get 'users/dashboard'
  # get 'users', to: 'users#index'


  get 'super_admins/dashboard'


  resources :user_types
  resources :users, only: [:index, :show, :edit]
  devise_for :users
  root 'welcome#home'









  devise_for :user, skip: [:sessions]
  as :user do
    get 'login', to: 'devise/sessions#new'
  	get 'signup', to: 'devise/registrations#new'
  	get 'logout', to: 'devise/sessions#destroy'


  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
