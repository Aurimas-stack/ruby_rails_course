Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "courses#index"
  
  get "courses/new", to: "courses#new"
  get "about", to: "pages#about"
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  post "course_enroll", to: "student_courses#create"

  resources :students, except: [:destroy]
end
