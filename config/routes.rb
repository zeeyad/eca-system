Rails.application.routes.draw do
  resources :attendances
  resources :activities
  resources :members
  resources :students
  resources :clubs
  resources :semesters
  devise_for :users

  root to: 'static#homepage'
end
