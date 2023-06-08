Rails.application.routes.draw do
  get 'books' => 'lists#index', as: 'index'
  post 'lists' => 'lists#create'
  get 'lists/edit'
  root 'homes#top'
  get 'books/:id' => 'lists#show', as: 'book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
