Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :persons do
    resources :students, type: 'Student'
    resources :teachers, type: 'Teacher'
  end

  # Defines the root path route ("/")
  root "persons#index"
end
