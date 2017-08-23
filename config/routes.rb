Rails.application.routes.draw do
  resources :todo1s
  get 'welcome2/contact'

  get 'welcome2/abouut'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get '/welcome', to: 'welcome#index'
  get '/about', to: 'welcome2#abouut'
  get '/contact', to: 'welcome2#contact'
  
 end
