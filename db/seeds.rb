# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

Review.destroy_all
Booking.destroy_all
Garden.destroy_all
User.destroy_all
puts "user + gardens destroyed"


puts "starting seed"

#1
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+1@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Wonderful quite garden, nice neighbors, w pool",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Kollwitzstraße 25 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1555585417-3a677e64f183?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1562864758-143c0cc8b5a4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1654&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!


    puts "added 3 images"
  end
end

#4
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+2@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Summer paradise for families, pet friendly",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Charlottenstraße 2 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/flagged/photo-1556255609-fa59ae174716?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1568483718623-f0637238a154?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1544467168-9cf334a9ce56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#7
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+3@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Berlin's best place for the summer",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Prenzlauer Allee 165 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1528061019198-c2391f414bec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1463554050456-f2ed7d3fec09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1474265648294-a4236906a526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1655&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#10
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+4@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Adam und Eva would make out here",
      description: "Right in the center of Berlin, there is this beautiful place
       which will make you fall in love with life again. You are looking for a
       place to lie down, put up your feet and call your home away from home?
       You found your place. Away from all the trouble of Berlin’s city sound,
       there is this magical garden waiting for you. The garden belongs to me
       and my husband Rudolf. We love plants and everything that is green.
       Since we don’t have time for it these days we would like someone else to
       benefit from this. Grow whatever you feel like. Make use of the great
       earth. Make it fruits, vegetables or a nice flower bed. The neighbours
       are chill and the restaurant within the garden community is lovely and
       has tasty food. We would love you to take over our garden and see what
       you do with it. Ingrid and Rudolf",
      price: Faker::Number.number(digits: 2),
      location: "Yorckstraße 55 Berlin")
    puts "new garden not saved yet"
    # photos
    image1= URI.open('https://images.unsplash.com/photo-1568480289558-83c01a7cf56c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1585107328143-be98f5f6119b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1570851325873-733fb2e7b344?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1548&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#13
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+5@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Hidden gem, quiet, nice restaurant, mix of shadow and sun",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Columbiadamm 23 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1538307602205-80b5c2ff26ec?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1569185835836-a9683f3c72a4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1555897209-d0bf7ab2d02f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#16
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+6@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Newly seeded garden looking for new owner",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Am Treptower Park 37 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1590439190121-23a9223ace72?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1444392061186-9fc38f84f726?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80https://images.unsplash.com/photo-1474265648294-a4236906a526?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1655&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1467970767472-2488be1b8362?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=666&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#19
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+7@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Great for vegetables and sundowners",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Grünberger Straße 22 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1524247108137-732e0f642303?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1524247108137-732e0f642303?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1566938077754-8a2ea6258253?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#22
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+8@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Wonderful quite garden, nice neighbors, w pool",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Kielblockstraße 1 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1558872953-9bd42d7ecc01?ixlib=rb-1.2.1&auto=format&fit=crop&w=1100&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1580600301354-0ce8faef576c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1581578017306-7334b15283df?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#25
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+9@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Garden with pool, flowerbed and TV",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Oberseestraße 2 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1460533893735-45cea2212645?ixlib=rb-1.2.1&auto=format&fit=crop&w=2300&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1555897209-d0bf7ab2d02f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1532509774891-141d37f25ae9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')


    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

#28
1.times do
  new_user = User.create(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+10@gmail.com",
    password: "garden2rent")
  puts "added user"
  1.times do
    new_garden = Garden.new(
      title: "Make your own botanic garden in Prenzlauer Berg",
      description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
      price: Faker::Number.number(digits: 2),
      location: "Gleimstraße 20 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1584479898061-15742e14f50d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1566938081516-c16ca8d5dea6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1566938081516-c16ca8d5dea6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

puts "done"
