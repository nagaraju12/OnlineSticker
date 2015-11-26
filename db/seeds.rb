# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email => 'kammaranagaraju@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'user')
User.create(:email => 'admin@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'admin')
User.create(:email => 'raju@gmail.com', :password => '12345678', :password_confirmation => '12345678', :role => 'user')




Category.find_or_create_by(:name => "Free Sticker")
Category.find_or_create_by(:name => "Paid Sticker")
