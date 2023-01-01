Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_for :users, skip: [:registrations]
  
  devise_scope :user do
    get '/users/sign_up' => 'registers#new', as: :new_user_registration
    post 'users' => 'registers#create', as: :user_registration
    get '/users/:id/edit' => 'registers#edit', as: :edit_user
    patch '/users/:id' => 'registers#update'
  end
  root "home#index"
  resources :users
end
