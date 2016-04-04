Rails.application.routes.draw do

  root 'pages#home'

  resources :users, only: [:show] do
    resources :goals
  end

end
