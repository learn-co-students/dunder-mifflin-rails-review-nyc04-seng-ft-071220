Rails.application.routes.draw do
  # resources :dogs
  get '/dogs', to: "dogs#index", as: "dogs" #all the dogs
  get '/dogs/:id', to: "dogs#show", as: "dog" #specific dog

  # resources :employees
  get '/employees', to: "employees#index", as: "employees" #all the employees
  get '/employees/new', to: "employees#new", as: "new_employee" #form to create employee
  post '/employees', to: "employees#create" #creates the employee
  get '/employees/:id', to: "employees#show", as: "employee" #specific employee
  get '/employees/:id/edit', to: "employees#edit", as: "edit_employee" #form to edit employee
  patch '/employees/:id', to: "employees#update" #updates the employee
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
