Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'}
  devise_for :models

    root 'posts#index'

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
