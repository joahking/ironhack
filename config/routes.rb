Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'projects', to: 'projects#index'
  get 'projects/new', to: 'projects#new', as: :new_project
  get 'projects/:id', to: 'projects#show', as: :project
  post 'projects', to: 'projects#create'

  get "/projects/:project_id/time_entries", to: 'time_entries#index', as: :project_time_entries
end
