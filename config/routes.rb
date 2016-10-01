Rails.application.routes.draw do
  get 'journals/upload', to: 'journals#upload'
  post 'journals/bulk_create', to: 'journals#bulk_create'
  resources :journals

  resources :items
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
