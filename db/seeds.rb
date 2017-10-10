# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(
  name: "Bob Smith",
  email: 'different_user@fake.com'
)

user2 = User.create(
  name: 'Jane Doe',
  email: 'fake@fake.com'
)

Haiku.create(
  title: 'example',
  poem: "I am first with five \n Then seven in the middle \n Five again to end",
  user_id: user2.id
)

Haiku.create(
  title: 'frogs',
  poem: "Green and speckled legs \n Hop on logs and lily pads \n Splash in cool water",
  user_id: user2.id
)

Haiku.create(
  title: 'welcome',
  poem: "Welcome to Haikus \n When submitting your Haiku \n Bring the best of You",
  user_id: user1.id
)
