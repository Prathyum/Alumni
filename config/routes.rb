Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'forms/new'

 resources :forms
devise_for :students, :controllers => { :omniauth_callbacks => "callbacks" }


  devise_scope :student do
  authenticated :student do
    root 'forms#new', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
