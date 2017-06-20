Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'









  devise_for :user, skip: [:sessions]
  as :user do
  	get 'login', to: 'devise/sessions#new'
  	get 'logout', to: 'devise/sessions#destroy'


  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
