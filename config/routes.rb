Rails.application.routes.draw do
  root to: 'static#homepage'
  devise_for :users
  
  resources :semesters
  resources :members
  resources :students
  resources :clubs do
    member do
      get :members
      resources :activities do 
        resources :attendances
      end
      get 'activity/:activity_id', to: 'activities#show', as: :activity
    end
  end

end
