Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "users/new"   => "users#new",   :as => :new_user
  post "users/new" => "users#new"
  resources :users, only: [:new, :create]
end
