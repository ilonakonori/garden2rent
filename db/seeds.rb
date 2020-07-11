# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

addresses = [
"Kollwitzstraße 25 Berlin",
"Charlottenstraße 2 Berlin",
"Prenzlauer Allee 165 Berlin",
"Yorckstraße 55 Berlin",
"Columbiadamm 23 Berlin",
"Am Treptower Park 37 Berlin",
"Grünberger Straße 22 Berlin",
"Kielblockstraße 1 Berlin",
"Oberseestraße 2 Berlin",
"Gleimstraße 20 Berlin" ]

counter = 1
user_count = 1


Garden.destroy_all
User.destroy_all
puts "user + gardens destroyed"


puts "starting seed"

10.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+#{user_count}@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Wonderful quite garden, nice neighbors, w pool",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: addresses.shuffle.sample)
    puts "new garden not saved yet"
    1.times do
      image = URI.open('https://images.unsplash.com/photo-1562182384-08115de5ee97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1867&q=80')
      new_garden.photos.attach(io: image, filename: "#{new_garden.location}_#{counter}", content_type: 'image/png')
      counter += 1
      image = URI.open('https://images.unsplash.com/photo-1566196614941-3a70657abf60?ixlib=rb-1.2.1&auto=format&fit=crop&w=1336&q=80')
      new_garden.photos.attach(io: image, filename: "#{new_garden.location}_#{counter}", content_type: 'image/png')
      counter += 1
      image = URI.open('https://images.unsplash.com/photo-1557429287-b2e26467fc2b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80')
      new_garden.photos.attach(io: image, filename: "#{new_garden.location}_#{counter}", content_type: 'image/png')
      counter += 1
    end
    new_garden.user = new_user
    new_garden.save!
    counter = 0
    puts "added 3 images"
  end
  user_count += 1
end

puts "done"
