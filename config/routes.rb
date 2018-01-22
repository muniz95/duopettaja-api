Rails.application.routes.draw do
  resources :levels
  resources :question_options
  resources :questions
  resources :lessons
  resources :skills
  resources :users

  get 'skills/:id/lessons', to: 'skills#lessons'
  get 'lessons/:id/questions', to: 'lessons#questions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
