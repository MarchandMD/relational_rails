# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Mountain.destroy_all
Trail.destroy_all

mountain_1 = Mountain.create!(name: 'Keystone', handicap_accessible: true, elevation: 5280)
mountain_1.trails.create!(name: 'Bunny run', trail_open: true, elevation_drop: 10)
mountain_1.trails.create!(name: 'Schoolmarm', trail_open: true, elevation_drop: 250)

mountain_2 = Mountain.create!(name: 'Loveland', handicap_accessible: true, elevation: 5280)
mountain_2.trails.create!(name: 'the flume', trail_open: true, elevation_drop: 350)
mountain_2.trails.create!(name: 'beggars bend', trail_open: true, elevation_drop: 400)

mountain_3 = Mountain.create!(name: 'Aspen Hill 1', handicap_accessible: true, elevation: 10000)
mountain_3.trails.create!(name: 'supergauge', trail_open: true)
mountain_3.trails.create!(name: 'yikes', trail_open: true)