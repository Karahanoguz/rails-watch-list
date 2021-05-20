Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get 'lists/new'
  get 'lists/create'
  get 'lists/index'
  get 'lists/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  resources :lists, only: [:new, :create, :index, :show]
end
