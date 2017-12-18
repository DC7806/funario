Rails.application.routes.draw do
  #admin
  devise_for :users, controllers: { registrations: "registrations"}
  
  #app
  root "pages#index"
  resources :articles, only: [:show, :index]
  resources :authors, only: [:index]
  resources :carousels
  get 'tags/:tag', to: 'articles#index', as: :tag

  #admin
  get '/backyard/dashboard', to: 'admin#dashboard', as: :admin_root
  get '/user/pasword/edit', to: 'devise/passwords#edit'
  namespace :admin, path: 'backyard' do
    resources :articles, :authors, :sliders, except: [:show]
    resources :meta, :pins, only: [:index, :edit, :update]
    resources :systems, only: [:edit, :update]
  end
  
  #ckEditor
  mount Ckeditor::Engine => '/ckeditor'
  
end
