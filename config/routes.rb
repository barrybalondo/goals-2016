Rails.application.routes.draw do
 
  root "pages#home" 

  resources :barries
  resources :neils
  resources :ancos
  resources :justins

end
