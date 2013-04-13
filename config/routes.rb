AngularHalo::Application.routes.draw do
  resources :organizations

  resources :projects

  devise_for :users

  root to: 'projects#index'

end
