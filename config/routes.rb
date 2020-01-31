Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post "/students/new", to: "students#new", as: "new_student"
  # get "/students/new", to: "students#new", as: "student"
  resources :students, only: [:index, :create,:new,:show]
  #get '/student/:id', to: 'students#show', as: 'student'
end
