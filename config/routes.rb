Rails.application.routes.draw do
  resources :projects do
    resources :time_entries, only: :index
  end
end
