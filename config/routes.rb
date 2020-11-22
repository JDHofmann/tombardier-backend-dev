Rails.application.routes.draw do
  resources :project_links
  resources :project_images
  resources :projects
  resources :user_links
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
