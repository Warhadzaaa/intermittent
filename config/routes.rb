Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: %i[show edit update] do
    resources :projects, except: %i[index destroy update edit] do
      resources :candidates, only: %i[index show] do
        resources :tasks, only: :create do
          resources :reviews, only: :create
        end
      end
    end
  end

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  # ressources pour les reviews
  resources :companies, only: :show do
    resources :projects, only: :show do
      resources :tasks, only: :create do
        resources :reviews, only: :create
      end
    end
  end

   get "archived/:id", to: "projects#archived", as: "archived"

  resources :candidates, except: %i[index destroy]
  # resources :tasks, only: %i[update]
  resources :projects, only: %i[update edit] do
    member do
      post "archive", to: "projects#archive"
    end
  end

  resources :tasks, only: [] do
    member do
      get :accept
      get :decline
      get :archive
    end
  end


  # get 'accept', to: 'tasks#accept'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
