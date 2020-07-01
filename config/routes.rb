Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # root to: 'countries#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'create', to: 'countries#create', as: :create_country
  resources :countries,  only: [:index, :show] do
    resources :places, only: [:create]
  end

end
