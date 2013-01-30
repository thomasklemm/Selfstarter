Selfstarter::Application.routes.draw do
  devise_for :users,
    path_names: {sign_in: 'login', sign_out: 'logout'}

  devise_scope :user do
    get 'login',  to: 'devise/sessions#new',     as: :new_user_session
    get 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  # Projects
  resources :projects, except: :destroy do
    get 'team', on: :member
  end

  # Teams
  resource :team

  # User authentication
  # devise_for :users,
  #   path_names: {sign_in: 'login', sign_out: 'logout'},
  #   controllers: {omniauth_callbacks: 'omniauth'}

  # Static Pages
  get '*id' => 'pages#show', as: :page

  # Root
  root to: 'pages#show', id: 'home'
end
