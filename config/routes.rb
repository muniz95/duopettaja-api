Rails.application.routes.draw do
  resources :levels
  resources :question_options
  resources :questions
  resources :lessons
  resources :skills
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
