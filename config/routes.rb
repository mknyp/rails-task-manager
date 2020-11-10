Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # SYNTAX = verb path, to: controller#controller_action

  # READ all tasks
  get '/tasks', to: 'tasks#index' # we can have any path we want pointing to any controller action
  # READ 1 task
  get '/tasks/new', to: 'tasks#new' # display a new empty form for a new task (belongs to CREATE)
  get '/tasks/:id', to: 'tasks#show', as: :task# reading an exisiting task by id
  # CREATE 1 task
  post '/tasks', to: 'tasks#create' # creates task upon clicking submit (its a convention from the form which always posts to index)
  # # UPDATE 1 task
  get '/tasks/:id/edit', to: 'tasks#edit' # edit page for prefilled form for a specific task ID
  # patch '/tasks/:id', to: 'tasks#update'
  # # DELETE 1 task
  # delete '/tasks/:id', to: 'tasks#destroy'
end
