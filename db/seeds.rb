# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')
Series.create!(:title => "test series 1", :description => "test1")
Movie.create!(:title => "test movie 1", :series_id => 1)
Movie.create!(:title => "test movie 2", :series_id => 1)
Movie.create!(:title => "test movie 3", :series_id => 1)
