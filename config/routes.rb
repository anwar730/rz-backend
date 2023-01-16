Rails.application.routes.draw do
  resources :admins
  resources :matched_jobs
  resources :job_applications
  resources :jobs
  resources :employers
  resources :jobseekers
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me/jobseeker", to: "jobseekers#show"
  get "/me/employer", to: "employers#show"
  get "/me/admin", to: "admin#show"
  post '/signup', to: "jobseekers#create"
  post '/employer/signup', to: "employers#create"
  post '/admin/signup', to: "admins#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
