Rails.application.routes.draw do
  resources :admins
  resources :matched_jobs
  resources :job_applications
  resources :jobs
  resources :employers
  resources :jobseekers
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "jobseekers#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
