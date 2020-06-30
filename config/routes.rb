Rails.application.routes.draw do
  get 'profile/profile'
  get 'profile/new'
  post 'profile/create'
  get 'profile/edit'
  put 'profile/commit'
  devise_for :users
  get '/', to: 'welcome#index', as: 'root'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
