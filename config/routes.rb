Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :home, only: %i[index], controller: 'forms/home'

  root to: 'forms/home#index'#redirect(path: '/home')
  
  resources :compare, only: %i[index create], controller: 'forms/compare'
end
