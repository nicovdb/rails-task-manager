Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to:'tasks#index', as: :tasks
  get "task/:id", to: "tasks#show", as: :task
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create", as: :create_task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "task/:id", to: "tasks#update", as: :update_task
  delete "task/:id", to: "tasks#destroy", as: :destroy_task
end
