Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  #app
  resources :articles, only: [:show, :index]
  #admin
  namespace :admin, path: 'backyard' do
    resources :articles, except: [:show]
    root "admin#index"
  end
end
