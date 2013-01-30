Selfstarter::Application.routes.draw do
  devise_for :users,
    path_names: {sign_in: 'login', sign_out: 'logout'}

  devise_scope :user do
    get 'login',  to: 'devise/sessions#new',     as: :new_user_session
    get 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  # Teams
  resources :teams, except: :show do
    get 'manage', on: :collection, as: :manage_teams_path
  end

  # Projects
  resources :projects, except: :show do
    get 'manage', on: :collection, as: :manage_projects_path
  end

  # Static pages
  get 'pages/*id' => 'pages#show', as: :page

  # GET /apple => teams#show
  # GET /apple/ipad => projects#show
  resources :teams, only: :show, path: '' do
    resources :projects, only: :show, path: ''
  end

  # User authentication
  # devise_for :users,
  #   path_names: {sign_in: 'login', sign_out: 'logout'},
  #   controllers: {omniauth_callbacks: 'omniauth'}

  # Root
  root to: 'projects#index'
end
