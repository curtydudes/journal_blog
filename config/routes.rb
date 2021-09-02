Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :categories do
    resources :agendas
  end
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  root "categories#index"
end
