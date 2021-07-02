Rails.application.routes.draw do
  root 'users#index'
  post 'create' => 'users#create'
  get 'result' => 'users#result'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
