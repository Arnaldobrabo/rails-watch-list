Rails.application.routes.draw do
  resources :lists, only: %i{create new destroy show} do
    resources :bookmarks, only: %i{create new}
  end
  resources :bookmarks, only: :destroy
  root "list#index"
  # get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: "pages#home"

  # Defines the root path route ("/")
end
