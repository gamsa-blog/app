Rails.application.routes.draw do
  resources :posts, only: [
    :new, :create, :show, :index
  ]
end
