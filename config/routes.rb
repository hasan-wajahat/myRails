Rails.application.routes.draw do

  root 'main#index'

  get 'rails_home/index'

  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
