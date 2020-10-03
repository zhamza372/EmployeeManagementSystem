Rails.application.routes.draw do
  get 'reports/tasks'
  get 'reports/time_logs'
  get 'reports/task_audits'
  resources :users do
    resources :comments, shallow: true
    collection do
      get 'search'
    end
  end
  resources :projects do
    resources :projects_users, shallow: true
    resources :comments, shallow: true
    collection do
      get 'search'
    end
  end
  get 'user_companies/find', controller: 'user_companies', action: 'find'
  post 'user_companies/find', controller: 'user_companies', action: 'search_by_email'
  devise_for :user, controllers: { registrations: 'registrations', sessions: 'sessions' }
  root to: 'home#index'
  resources :departments do
    resources :comments, shallow: true
    resources :projects_departments, shallow: true
  end
  resources :teams do
    resources :users_teams, shallow: true
    resources :comments, shallow: true
  end
  resources :tasks do
    resources :time_logs
    resources :comments, shallow: true
  end
end
