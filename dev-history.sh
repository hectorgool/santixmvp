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

