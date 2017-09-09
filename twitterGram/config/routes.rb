Rails.application.routes.draw do
  devise_for :users
  devise_for :models
    root 'users#index'
    
      resources :users do
        resources :posts
      end
     
      scope 'posts/:post_id', as: 'post' do
        resources :comments, only: [:new, :create]
      end

      resources :users do
        resources :bio
      end
    end
