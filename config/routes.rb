Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home' => 'home#index'
  post 'user/new', to: 'users#create'
  post 'user/user', to: 'users#user'
  post 'user/delete', to: 'users#delete'
  get 'user/list' => 'users#list'
end
