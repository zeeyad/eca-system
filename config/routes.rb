Rails.application.routes.draw do
  resources :attendances
  resources :activities
  resources :members
  resources :students
  resources :clubs do
    #resources :activities
    member do
      get :members
      get :activities
    end
  end
  resources :semesters
  devise_for :users

  root to: 'static#homepage'
end
