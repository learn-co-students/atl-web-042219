Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cohorts, only: [:new, :create, :show, :index], path: 'batches'
  # resources :cohorts, except: [:edit, :update, :destroy]
  resources :students, only: [:new, :create, :show, :edit, :update]

  root to: 'cohorts#index'
end
