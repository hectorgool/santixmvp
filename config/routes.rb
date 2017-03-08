Rails.application.routes.draw do
  devise_for :users
  get 'tours/index'

  get 'tours/show'

  namespace :admin do
    get 'tours/new'
  end

  namespace :admin do
    get 'tours/create'
  end

  namespace :admin do
    get 'tours/edit'
  end

  namespace :admin do
    get 'tours/update'
  end

  namespace :admin do
    get 'tours/destroy'
  end

  # santo
  root to: "tours#index"  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
