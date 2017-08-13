Rails.application.routes.draw do
 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'forms/new'
  get 'forms/edit'
  get '/2sign' => 'users#new'
  get 'staticpage/index'

 resources :forms
 resources :users
devise_for :students
  

resources :student do
  resources :form 
end

  devise_scope :student do
  authenticated :student do
    root 'forms#new', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

   

  resources :questions do
    member do
      put "like", to:    "questions#upvote"
      put "dislike", to: "questions#downvote"
    end
   resources :comments
 end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
