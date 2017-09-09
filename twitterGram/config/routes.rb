Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root :to => 'user#index'
    end
    unauthenticated :user do
      root :to => 'devise/registrations#new'
    end
  end
  devise_for :models

    root 'user#index'

      resources :users do
        resources :posts
      end

      scope 'posts/:post_id', as: 'post' do
        resources :comments, only: [:new, :create]
      end

      resources :users do
        resources :registrations
      end
    end
