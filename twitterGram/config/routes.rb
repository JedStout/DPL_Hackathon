Rails.application.routes.draw do
  get 'user/email:string'

  get 'user/password:string'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "post#index"
end
