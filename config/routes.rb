Rails.application.routes.draw do
  devise_for :users
  root to: 'chat#index'
  #get 'chat#login_check'
  
  get 'chat/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
