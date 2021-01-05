Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home' #/:Small but Cozy Garden Close to Tempelhofer Feld'

  #resources :gardens, only: :show, param: :name
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens do
    collection do
      get :my_gardens
    end
    resources :bookings, only: :create
  end
  resources :bookings, only: [:index, :show] do
      resources :reviews, only: [:new, :create]
  end
  resources :users, only: :show, param: :first_name
  #get 'users/:first_name', :to => 'users#show'
end
