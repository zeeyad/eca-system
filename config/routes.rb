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
        resources :attendances, only: %i(index absent) do
          member do
            get 'absent', to: 'attendances#absent'
            get 'present', to: 'attendances#present'
          end
        end
      end
      # This is for viewing individual activity details
      get 'activity/:activity_id', to: 'activities#show', as: :activity
    end
  end
  

end
