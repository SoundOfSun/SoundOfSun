Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'dashboard', to: 'users#dashboard'

  devise_for :users, controllers: {
  sessions: 'users/sessions'
}
  resources :skills, only: [:new]
  resources :users, only: [:edit, :show, :index]
end
