Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :tours, only: [:index, :show]

  # namespace :admin do
  #   get 'tours/new'
  # end
  #
  # namespace :admin do
  #   get 'tours/create'
  # end
  #
  # namespace :admin do
  #   get 'tours/edit'
  # end
  #
  # namespace :admin do
  #   get 'tours/update'
  # end
  #
  # namespace :admin do
  #   get 'tours/destroy'
  # end

  # santo
  namespace :admin do
    root "application#index"
    resources :tours, only: [:new, :create, :edit, :update, :destroy]
    resources :users do
      member do
        patch :archive
      end
    end
  end

  # santo
  root to: "tours#index"

  # santo
  devise_scope :user do
    get '/users' => 'devise/registrations#new'
    get '/users/password' => 'devise/passwords#new'
  end

  # santo
  resources :attachments, only: [:show, :new]

  # santo
  resources :tours do
    resources :reservations
    #resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
