Rails.application.routes.draw do
  get 'posts', to: 'posts#index'
end
Rails.application.routes.draw do
  root to: 'posts#index'  
  post 'posts', to: 'posts#create'
  
end