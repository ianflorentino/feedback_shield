Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins
  devise_for :companies
  
  root to: 'pages#index'
  get '/behind-the-scenes', to: 'pages#behind_the_scenes'

  resources :companies do
    member do
      get '/dashboard', to: 'companies#dashboard'
    end
    resource :landing_page
  end

  resources :admins do
    collection do
      get '/dashboard', to: 'admins#dashboard'
    end
  end

  devise_scope :admin do
    get '/admin-login', to: 'devise/sessions#new'
  end

  devise_scope :company do
    get '/company-login', to: 'devise/sessions#new'
  end
end
