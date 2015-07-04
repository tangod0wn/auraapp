# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(email: 'admin@example.com', password: '12345678')
user.add_role :admin
user2 = User.create!(email: 'resident@example.com', password: '12345678')
user2.add_role :resident
user2.profile = Profile.new(name: 'Pete')
user2.profile.save