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
        get 'complete', to: 'activities#complete'
        get 'plan', to: 'activities#plan'
        get 'cancel', to: 'activities#cancel'
        resources :attendances, only: %i(index new create absent) do
          member do
            get 'absent', to: 'attendances#absent'
            get 'present', to: 'attendances#present'
            post 'present', to: 'attendances#create'
          end
        end
      end
      # This is for viewing individual activity details
      get 'activity/:activity_id', to: 'activities#show', as: :activity
    end
  end

  get 'student_imports', to: 'student_imports#index', as: :student_imports
  post 'student_imports', to: 'student_imports#create'  

  get 'member_imports', to: 'member_imports#index', as: :member_imports
  post 'member_imports', to: 'member_imports#create'

end
