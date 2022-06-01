Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: %i[show edit update] do
    resources :projects, except: %i[index delete] do
      resources :tasks, only: %i[new edit update]
    end
  end
  resources :candidates, except: :delete
  # get "archived/:id", to: "projects#archived", as: "archived"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
