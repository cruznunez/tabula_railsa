Rails.application.routes.draw do
  root "home#new"
  get 'reset' => 'home#reset'

  resources :home
end
