Selfstarter::Application.routes.draw do
  # User authentication
  devise_for :users,
    path_names: {sign_in: 'login', sign_out: 'logout'}

  devise_scope :user do
    get 'login',  to: 'devise/sessions#new',     as: :new_user_session
    get 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  # Teams and projects
  resources :teams
    resources :projects
  end

  # Static pages
  get 'pages/*id' => 'pages#show', as: :page

  # User authentication
  # devise_for :users,
  #   path_names: {sign_in: 'login', sign_out: 'logout'},
  #   controllers: {omniauth_callbacks: 'omniauth'}

  # Root
  root to: 'projects#index'
end
