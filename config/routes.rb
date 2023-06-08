Rails.application.routes.draw do

  resources :lists
  get 'books' => 'lists#index', as: 'index'
  post 'lists' => 'lists#create'
  get 'books/:id/edit'=> 'lists#edit',as: 'edit'
  root 'homes#top'
  get 'books/:id' => 'lists#show', as: 'book'
  patch 'books/:id' => 'lists#update', as: 'update_list'
  delete 'books/:id' => 'lists#destroy', as: 'destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
