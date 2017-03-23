Rails.application.routes.draw do

  devise_for :users
  resources :books
  resources :lists


root 'welcome#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/books/add/:id' , to: 'books#add', as: 'add_to_list'
  get '/lists/:id' , to: 'lists#show'

end
