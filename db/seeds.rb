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

# 0

1.times do
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    short_bio: "Journalist and travel bug is ready to lift the wings and travel the world.
    You can follow my story @travelbug2020 or take care of my garden while I am away!",
    email: "gardenBug2rent+1@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Cozy Garden in the Heart of Berlin",
      description: "
      A small, picket fence loops around the garden, giving people an elegant way of exploring the garden and all it has to offer. 
      Vines and grass slightly disrupt the pristine look as they hungrily search for even more pieces of land to expand to.
      The greenhouse is the pride and joy of the creator of this garden. 
      The rows of flowers do their best to take some of the attention, and the hedges and bushes are surely a sight to behold, but the eye will just be naturally drawn to the greenhouse..",
      price: Faker::Number.number(digits: 2),
      location: "An der Industriebahn 5 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1575963644631-ade305b3771a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1598075143727-c302a41ed75c?ixlib=rb-1.2.1&auto=format&fit=crop&w=975&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1484509025075-64c8133991bf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!


    puts "added 3 images"
  end
end


#1

1.times do
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    short_bio: "Hey guys! I am a fair and honest person.
    I like working with people and helping others makes me happy.
    But, I don't like working the soil...so I'm renting this garden!
    Have fun with it!",
    email: "garden2rent+2@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Arty Garden with Lovely Neighbors",
      description: "
      The rows of flowers are slightly overgrown, but look otherwise in great shape; they're growing in all sorts and sizes.
      The flower bushes and shrubs reach 1.2m/4ft high, but this about as tall as they'll reach. Here and there lies a small boulder,
      offering a glimpse of the best spots. Plants, grass, and roots are sticking to their own domains for now,
      but are no doubt craving to stretch these boundaries.",
      price: Faker::Number.number(digits: 2),
      location: "Kollwitzstraße 25 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1588765865354-f6e9e7cdb3e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1599778150379-8156f5ca50c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1587038593017-a47e5114ea7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2048&q=80')
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
    short_bio: "I just finished Le Wagon Web Development Bootcamp and started my own studio.
    Now I'm working day and night and don't have a time to maintain this garden...",
    email: "garden2rent+3@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Summer Paradise for Families, Pet Friendly",
      description: "A well kept patch of grass is framed by well kept flower bushes and shrubs. A single,
      chunky tree stands in the front right, its trunk and crown cast dancing shadows on the garden below.",
      price: Faker::Number.number(digits: 2),
      location: "Charlottenstraße 2 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1557207562-a3157143784e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1536236010565-78fbb2fb25d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1594633834252-18f92511bd9c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1942&q=80')
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
    email: "garden2rent+4@gmail.com",
    short_bio: "Product manager and fitness coach, somewhere in the intersection of tech, health/fitness and psychology.
    Atm I'm building little tools myself, working remote for Microsoft as software engineer and doing freelance on the side.
    After my typical day I feel little bit low in energy and don't have much time to maintain garden.
    Still, garden is in good shape, I plant flowers at early spring and watering it once a week.",
    password: "garden2rent")
   puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1581992652564-44c42f5ad3ad?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Sweet Strawberries",
      description: "
      At early spring, we plant various flowers in the garden beds.
      This results to colorful combinations when the flowers flourish. The garden has a greenhouse with strawberies.
      Take care of our garden with love and spoil yourself.",
      price: Faker::Number.number(digits: 2),
      location: "Prenzlauer Allee 165 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1591271300850-22d6784e0a7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1553481839-a18af44d1355?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1555767369-2d4bc810901a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
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
    short_bio: "Currently working for Le Wagon in Berlin as lead teacher and developer.
    I used to do freelancing on small web dev projects, but I stoped... I really enjoy teaching and love my job,
    but my students can be really 'needy'. They seek help all the time and I don't have time for anything else.",
    email: "garden2rent+ryan@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Make Your Own Botanic Garden in Prenzlauer Berg",
      description: "
      The tree, an ash, has stood there for over a century, and is for all intents and purposes the guardian of this
      garden, and therefore the most appealing part. The rows of flowers do attract some attention, and the flower
      bushes and shrubs usually look amazing, but the focus is just simply on the tree.",
      price: Faker::Number.number(digits: 2),
      location: "Gleimstraße 20 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1598002547032-0c9ae8f3350a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1595806599278-d99e9c0e49d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1593452186132-b3dfae5d4739?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
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
    short_bio: "If you need anything we're not far away. But for the most part, we will leave you alone and let you enjoy your visit.",
    email: "garden2rent+5@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1472711649025-510d7c09a6fb?ixlib=rb-1.2.1&auto=format&fit=crop&w=1959&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Newly Seeded Garden Looking for New Owner",
      description: "
      Leaf loam, rough bark, rich colours, iridescent blues and greens, blade-like leaves,
      clumps of willows, shaggy autumnal trees,
      vegetable patch, stunted cabbages, caterpillar eaten leaves, tree foliage, daffodils",
      price: Faker::Number.number(digits: 2),
      location: "Am Treptower Park 37 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1416879595882-3373a0480b5b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1523348837708-15d4a09cfac2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1591857177580-dc82b9ac4e1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80')
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
    short_bio: "Coming from a finance/banking-background, I took over the operations for Le Wagon in Berlin early 2019.
    Now updating the definition of education for the German market.",
    email: "garden2rent+6@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1508908324153-d1a219719814?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Great For Vegetables and Sundowners",
      description: "Tangled thickets of thorn, flower beds, dishevelled lawns, tangled hawthorn, summer greenness, knotted boughs, branches drooped dankly.",
      price: Faker::Number.number(digits: 2),
      location: "Grünberger Straße 22 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1574804879742-d44d2047f3dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1527863280617-15596f92e5c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1566938064504-a379175168b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
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
    short_bio: "Hi! We’re Kitty Garden Rental, team of four kitties that helps you rest easy when you rent a private, professionally mowed garden from us.
    We promise your garden will be green, safe, and true to what you saw on Garden2Rent or we'll make it right.
    Check-ins are always smooth, and we're here 24/7 to answer any questions or help you find the perfect garden.",
    email: "garden2rent+7@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1521510186458-bbbda7aef46b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1101&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Veg Veggie Vegetables",
      description: "We have lots of seeds started under grow lights in our garden. 
      We’ve started all sorts of lettuces, cabbages, and arugula.
      The rest is up to our new garden owner.",
      price: Faker::Number.number(digits: 2),
      location: "Kielblockstraße 1 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1532509774891-141d37f25ae9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1507484467459-0c01be16726e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1508913826512-066cf8127860?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
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
    short_bio: "Berliner and movie producer. At the moment working on a new project and most of the time I am not in town.
    My cats Sibilie and Suzi is an EXTRA when it comes to renting flower garden.",
    email: "garden2rent+8@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1512663150964-d8f43c899f76?ixlib=rb-1.2.1&auto=format&fit=crop&w=2056&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Garden for Flower Lovers Only",
      description: "
      The grass has been mown so short the ground shows through.
      The moss is scuffed, rolling away from the soil like a carpet,
      its once strong greens yellowing in the heat.",
      price: Faker::Number.number(digits: 2),
      location: "Oberseestraße 2 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1558947624-b460995ab80c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1652&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1557808051-a7642867211c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1568035620400-0eab9ebe65b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
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
    short_bio: "Hello soil! It's me, the village girl who loves her garden! 
    I love spending time in the nature and poetry.
    I'm nice and lovely person.",
    email: "garden2rent+9@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1593202265280-6fb32683dda8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "The Place You Would Never Want to Leave",
      description: "
      We have a spacious garden dominated by a large pine tree that offers its shadow to our visitors.
      The big table under the pine tree is an ideal place for taking your meals or for relaxed chatting.
      Even in the hottest summer days the shadow of the tree keeps the place cool.
      There is a barbeque where you may grill fish or meat.",
      price: Faker::Number.number(digits: 2),
      location: "Gleimstraße 20 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1523824031433-fe774d7e367b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1594196907721-2aa2b0cc95ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1438109382753-8368e7e1e7cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end

  #ILONA!
  1.times do
  new_user = User.new(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    short_bio: "My Husband and I own this beautiful garden, but unfortunately we don't have a time to maintain it.
    We both work as a software engineers, and travel a lot. As a matter of fact, we are digital nomads.",
    email: "garden2rent+10@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1543059583-04b5b0950e9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1933&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Adam und Eva Would Make Out Here",
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
    image1 = URI.open('https://images.unsplash.com/photo-1416879595882-3373a0480b5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1597868067560-1dd6bd103d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1588346351168-b3c3950bc951?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80')
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
    short_bio: "This hidden gem is our only Garden2Rent. We love this garden and we are happy to have the chance to share this place with others.
    We also enjoy staying at other gardens when we can. It is such a great way to enjoy a new flowers!",
    email: "garden2rent+11@gmail.com",
    password: "garden2rent")
  puts "user not saved"
    image = URI.open("https://images.unsplash.com/photo-1504263133569-8d3f2301174e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80")
    new_user.photo.attach(io: image, filename: "#{new_user.first_name}_1", content_type: 'image/png')
    new_user.save!
    puts "added user with photo!"
  1.times do
    new_garden = Garden.new(
      title: "Small but Cozy Garden Close to Tempelhofer Feld",
      description: "
      Among my friends of root and wand, amid each green leaf and delicate petal,
      there are the dancing birds and the squirrels that dart.
      It is as if the song, the scurries and the subtle movements of flora are their voice,
      the song of the garden for those who listen with more than their ears.",
      price: Faker::Number.number(digits: 2),
      location: "Columbiadamm 23 Berlin")
    puts "new garden not saved yet"
    # photos
    image1 = URI.open('https://images.unsplash.com/photo-1555955207-b96159c16808?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80')
    new_garden.photos.attach(io: image1, filename: "#{new_garden.location}_1", content_type: 'image/png')
    image2 = URI.open('https://images.unsplash.com/photo-1569185835836-a9683f3c72a4?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80')
    new_garden.photos.attach(io: image2, filename: "#{new_garden.location}_2", content_type: 'image/png')
    image3 = URI.open('https://images.unsplash.com/photo-1489958800330-c8ff77c8457d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1539&q=80')
    new_garden.photos.attach(io: image3, filename: "#{new_garden.location}_3", content_type: 'image/png')

    new_garden.user = new_user
    new_garden.save!

    puts "added 3 images"
  end
end
end

puts "done"
