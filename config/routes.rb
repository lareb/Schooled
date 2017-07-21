Rails.application.routes.draw do
  root to: 'statics#home'
  resources :courses, :roles, :schools, :subjects, :users, :groups
end
