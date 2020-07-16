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
  new_user = User.new(first_name: "Ilona",
    last_name: Faker::Name.last_name,
    email: "garden2rent+@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://avatars2.githubusercontent.com/u/61380207?v=4")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Adam und Eva would make out here",
      description: "
Right in the center of Berlin, there is this beautiful place which will make you fall in love with life again. You are looking for a place to lie down, put up your feet and call your home away from home? You found your place.

Away from all the trouble of Berlin’s city sound, there is this magical garden waiting for you. The garden belongs to me and my husband Rudolf. We love plants and everything that is green. Since we don’t have time for it these days we would like someone else to benefit from this.

Grow whatever you feel like. Make use of the great earth. Make it fruits, vegetables or a nice flower bed.

The neighbours are chill and the restaurant within the garden community is lovely and has tasty food.


We would love you to take over our garden and see what you do with it.


Ilona and Rudolf",
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
1.times do
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+1@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://avatars2.githubusercontent.com/u/61380207?v=4")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Wonderful quite garden, nice neighbors, w pool",
      description: "
      The rows of flowers are slightly overgrown, but look otherwise in great shape; they're growing in all sorts and sizes.
      The flower bushes and shrubs reach 1.2m/4ft high, but this about as tall as they'll reach. Here and there lies a small boulder,
      offering a glimpse of the best spots. Plants, grass, and roots are sticking to their own domains for now,
      but are no doubt craving to stretch these boundaries.
      ",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+2@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://avatars0.githubusercontent.com/u/61702366?v=4")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Summer paradise for families, pet friendly",
      description: "A well kept patch of grass is framed by well kept flower bushes and shrubs. A single,
      chunky tree stands in the front right, its trunk and crown cast dancing shadows on the garden below.",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+3@gmail.com",
    password: "garden2rent")
   puts "user not saved"
    image = URI.open("https://avatars2.githubusercontent.com/u/15158574?v=4")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Berlin's best place for the summer",
      description: "
      At early spring, we plant various flowers in the garden beds.
      This results to colorful combinations when the flowers flourish. The garden is watered by a small private well.
      That way we help to preserve the precious water resources of Sithonia.",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+4@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1569342819/rppyppu4uealcfs4tmmv.jpg")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Make your own botanic garden in Prenzlauer Berg",
      description: "
      The tree, an ash, has stood there for over a century, and is for all intents and purposes the guardian of this
      garden, and therefore the most appealing part. The rows of flowers do attract some attention, and the flower
      bushes and shrubs usually look amazing, but the focus is just simply on the tree.",
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

#13
1.times do
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+5@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://avatars2.githubusercontent.com/u/15158574?v=4")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Hidden gem, quiet, nice restaurant, mix of shadow and sun",
      description: "
      We have a spacious garden dominated by a large pine tree that offers its shadow to our visitors.
      The big table under the pine tree is an ideal place for taking your meals or for relaxed chatting.
      Even in the hottest summer days the shadow of the tree keeps the place cool.
      At the back yard there is a barbeque where you may grill fish or meat.",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+6@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://avatars2.githubusercontent.com/u/61380207?v=4")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Newly seeded garden looking for new owner",
      description: "
      Leaf loam, rough bark, rich colours, iridescent blues and greens, blade-like leaves,
      clumps of willows, shaggy autumnal trees,
      vegetable patch, stunted cabbages, caterpillar eaten leaves, tree foliage, daffodils",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+7@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1566543641/yxntliggg3bvxuphgvye.jpg")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Great for vegetables and sundowners",
      description: "Tangled thickets of thorn, flower beds, dishevelled lawns, tangled hawthorn, summer greenness, knotted boughs, branches drooped dankly.",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+8@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://static.toiimg.com/photo/msid-67586673/67586673.jpg?resizemode=4&width=400")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Wonderful quite garden, nice neighbors, w pool",
      description: "The garden stretched up into town, winding like a black river through the bright party towers and houses.",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+9@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images-na.ssl-images-amazon.com/images/I/71uql8CC6oL._AC_SX466_.jpg")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Garden with pool, flowerbed and TV",
      description: "
      The grass has been mown so short the ground shows through.
      The moss is scuffed, rolling away from the soil like a carpet,
      its once strong greens yellowing in the heat.",
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
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "garden2rent+10@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://i.redd.it/ye2xwh3m94741.jpg")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Make your own botanic garden in Prenzlauer Berg",
      description: "
      Among my friends of root and wand, amid each green leaf and delicate petal,
      there are the dancing birds and the squirrels that dart.
      It is as if the song, the scurries and the subtle movements of flora are their voice,
      the song of the garden for those who listen with more than their ears.",
      price: Faker::Number.number(digits: 2),
      location: "Gleimstraße 20 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1584479898061-15742e14f50d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1566938081516-c16ca8d5dea6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1515150144380-bca9f1650ed9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end

puts "done"
