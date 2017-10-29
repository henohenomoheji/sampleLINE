Rails.application.routes.draw do
  devise_for :users
  root to: 'chat#index'
  #get 'chat#login_check'
  #resources :chat
  #delete 'chat/:id',to:'chat#show'
   
  get 'chat/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
