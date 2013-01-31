Selfstarter::Application.routes.draw do
  # User authentication
  devise_for :users,
    path_names: {sign_in: 'login', sign_out: 'logout'}

  # User auth: A few custom paths
  devise_scope :user do
    get 'login',  to: 'devise/sessions#new',     as: :new_user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
    get 'my_profile/edit', to: 'devise/registrations#edit', as: :edit_user_registration
  end

  # Projects
  resources :projects,
    only: [:index, :show]

  # Teams
  resources :teams,
    only: [:index, :show]

  # Every user's internal starter pages
  namespace :starter do
    resources :teams do
      resources :projects
    end
  end

  # Static pages
  get '*id' => 'pages#show', as: :page

  # User authentication
  # devise_for :users,
  #   path_names: {sign_in: 'login', sign_out: 'logout'},
  #   controllers: {omniauth_callbacks: 'omniauth'}



  # Root
  root to: 'pages#show', id: 'home'
end
