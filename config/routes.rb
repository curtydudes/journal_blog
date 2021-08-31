Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :categories do
    resources :agendas
  end
  root "categories#index"
end
