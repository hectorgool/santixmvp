#crete project
rails new --skip-bundle --api --database mysql santixmvp

#change directory
cd santixmvp

#install databases
mysql -u root -v < install_database.sql

#edit config/database.yml

#migrate database
rails db:migrate

#run server
rails s

#create admin tours controller
rails g controller admin/tours new create edit update destroy

#create tours controller
rails g controller tours index show

#create tour model
rails g model tour name:string description:string

#migrate database
rails db:migrate

#view routes
rails routes

#install bundle
bundle install

#edit Gemfile and add
#gem 'devise', git: 'git@github.com:plataformatec/devise.git'
bundle  install 
bundle show devise

rails generate devise:install

rails g devise:views

rails generate devise user

#migrate database
rails db:migrate

bundle update devise

#set root path
#edit config/routes.rb
#root to: "tours#index" 

#edit Gemfile and add
#gem 'simple_form'

#gem 'bootstrap-sass'

bundle