Rails.application.routes.draw do

  get 'photos/index'
  root 'photos#index'

  get "search", to: "photos#search"

end
