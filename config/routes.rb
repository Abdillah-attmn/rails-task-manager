Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Display all tasks
  get '/tasks', to: 'tasks#index'

  # Create a new task
  get '/tasks/new', to: 'tasks#new' # -> afficher le formulaire
  post '/tasks', to: 'tasks#create'

  # Update a task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'

  # Display task's details
  get '/tasks/:id', to: 'tasks#show', as: :task
end
