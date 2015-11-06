# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.find_or_create_by(:name => "Bed")
<<<<<<< HEAD
=======

Category.find_or_create_by(:name => "Curtains")
Category.find_or_create_by(:name => "Table")
>>>>>>> 48d71a478b13fca2e37add7a659f33a9ffabec20

Category.find_or_create_by(:name => "Curtains")
Category.find_or_create_by(:name => "Table")

Category.find_or_create_by(:name => "spoone")
