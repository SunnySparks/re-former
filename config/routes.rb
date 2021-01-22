Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "users/new"   => "users#new",   :as => :new_user
  post "users/new" => "users#new"
  
  get 'users/:id/edit', to: 'users#edit', as: :edit_user
  patch 'users/:id', to: 'users#update'

  resources :users, only: [:new, :create, :edit, :update]
end
