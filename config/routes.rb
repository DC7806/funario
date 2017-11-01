Rails.application.routes.draw do
  #admin
  devise_for :users
  
  #ckEditor
  mount Ckeditor::Engine => '/ckeditor'
  
  #app
  # root '/' => 'pages/index'
  resources :articles, only: [:show, :index]
  
  #admin
  namespace :admin, path: 'backyard' do
    resources :articles, :authors, except: [:show]
    root "articles#index"
  end
  
end
