Rails.application.routes.draw do
  # get 'bookmarks/new'
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # get 'lists/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET "lists" -- index list
  # GET "lists/42" -- show list
  # GET "lists/new" -- new list
  # POST "lists" -- create list
  root to: 'lists#index'
  resources :lists, only: [:show, :new, :create, :destroy, :index] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: :destroy
end
