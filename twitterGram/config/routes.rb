Rails.application.routes.draw do
  
  get 'bios/idex'

  get 'bios/show'

  get 'bios/new'

  get 'pages/idex'

  get 'pages/show'

  get 'pages/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "bios#index"
end
