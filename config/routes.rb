Rails.application.routes.draw do

  devise_for :users
  resources :books
  resources :lists


root 'welcome#index'
<<<<<<< HEAD

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/books/add/:id' , to: 'books#add', as: 'add_to_list'
  get '/lists/:id' , to: 'lists#show'
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 6b0f5c6f43b4ee995220a1ae0e5b0e886517bd0d
end
