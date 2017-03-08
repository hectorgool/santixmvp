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
rails generate simple_form:install --bootstrap

#edit config/routes and add
  # santo
#  devise_scope :user do
#    get '/users' => 'devise/registrations#new'
#    get '/users/password' => 'devise/passwords#new'
#  end

#edit db/seeds.rb and add
#santo. create user
#unless User.exists?(email: "hectorgool@gmail.com")
  #User.create!(email: "hectorgool@gmail.com", password: "asdfasdf")
#end

rails db:seed

#edit Gemfile and add 
# group :test do
#   gem 'capybara', '~> 2.4'
#   gem 'factory_girl_rails', '~> 4.5'
#   gem 'selenium-webdriver', '~> 3.0'
#   gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
# end

bundle


#edit Gemfile and add
# group :development, :test do 
#gem 'rspec-rails', '~> 3.4'
bundle update

rails g rspec:install

git add.
git commit -m "Set up gem dependencies and run RSpec generator"
git push

#Adding the admin field to the users table
rails g migration add_admin_to_users admin:boolean

#To change the default, open the freshly generated migration (which will be in db/
#migrate/<timestamp>_add_admin_to_users.rb) and change this line,
#add_column :users, :admin, :boolean
#to this:
#add_column :users, :admin, :boolean, default: false

bundle exec rails db:migrate 

bundle exec rake db:seed

git add .
git commit -m "Added admin flag to User model, and seeded the first admin user"
git push
