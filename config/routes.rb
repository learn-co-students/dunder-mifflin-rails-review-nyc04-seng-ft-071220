Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dogs/home', to: 'dogs#home', as: 'home_dog'
  
  get '/dogs', to: 'dogs#index', as: 'dogs'
  get '/dogs/new', to: 'dogs#new', as: 'new_dog'
  post '/dogs', to: 'dogs#create'
  get '/dogs/:id', to: 'dogs#show', as: 'dog'
  get 'dogs/:id/edit', to: 'dogs#edit', as: 'edit_dog'
  patch 'dogs/:id', to: 'dogs#update'
  delete 'dogs/:id', to: 'dogs#destroy'

  get '/employees', to: 'employees#index', as: 'employees'
  get '/employees/new', to: 'employees#new', as: 'new_employee'
  post '/employees', to: 'employees#create'
  get '/employees/:id', to: 'employees#show', as: 'employee'
  get 'employees/:id/edit', to: 'employees#edit', as: 'edit_employee'
  patch 'employees/:id', to: 'employees#update'
  delete 'employees/:id', to: 'employees#destroy'

  root 'dogs#home'
end
