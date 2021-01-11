Rails.application.routes.draw do

  root 'photos#index'
  resources :photos

  get 'search' => 'photos#search'

end
