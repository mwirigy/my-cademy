Rails.application.routes.draw do

  devise_for :users, :controllers => {  :registrations => "user/registrations" }
  root 'pages#index'

  get 'user/:id', to: "users#show", as: :user_root

  namespace :user do
    root 'users#show' # creates user_root_path
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
