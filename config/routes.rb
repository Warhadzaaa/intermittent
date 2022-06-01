Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: %i[show edit update] do
    resources :projects, except: %i[index destroy] do
      resources :tasks, only: %i[new]
    end
  end
  resources :candidates, except: :destroy
  resources :tasks, only: %i[update]

  get 'accept', to: 'tasks#accept'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
