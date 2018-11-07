# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create!(username: "Jun")
# User.create!(username: "user1")
# User.create!(username: "user2")
# User.create!(username: "user3")
# User.create!(username: "user4")
# User.create!(username: "user5")

##friend has to be bi-direction, otherwise friend can't find the user

# Message.create!(content: "Hello", user_id: 1, chat_id:1)
# Message.create!(content: "Hello", user_id: 1, chat_id:2)
# Message.create!(content: "Hello", user_id: 1, chat_id:3)
# Message.create!(content: "Hello2", user_id: 2, chat_id:1)
# Message.create!(content: "Hello2", user_id: 2, chat_id:2)
# Message.create!(content: "Hello2", user_id: 2, chat_id:3)
# Message.create!(content: "Hello4", user_id: 4, chat_id:3)
# Message.create!(content: "Hello5", user_id: 5, chat_id:3)
# Message.create!(content: "testing", user_id: 5, chat_id:1)
# Message.create!(content: "testing", user_id: 5, chat_id:1)
# Message.create!(content: "testing", user_id: 5, chat_id:1)
# Message.create!(content: "testing", user_id: 5, chat_id:1)
# Message.create!(content: "testing", user_id: 1, chat_id:15)
# Message.create!(content: "testing", user_id: 2, chat_id:15)
# Message.create!(content: "testing", user_id: 1, chat_id:15)
# Message.create!(content: "testing", user_id: 2, chat_id:15)
# Message.create!(content: "testing", user_id: 1, chat_id:15)

#
# Chat.create!(topic: "testingroom1", creator_id: 1)
# Chat.create!(topic: "testingroom2", creator_id: 1)
# Chat.create!(topic: "testingroom3", creator_id: 2)
# Chat.create!(topic: "testingroom4", creator_id: 3)
# Chat.create!(topic: "testingroom5", creator_id: 4)
# Chat.destroy_all
#
# Subscription.create!(user_id: 1, chat_id:1)
# Subscription.create!(user_id: 2, chat_id:1)
# Subscription.create!(user_id: 1, chat_id:2)
# Subscription.create!(user_id: 2, chat_id:2)
# Subscription.create!(user_id: 3, chat_id:2)
# Subscription.create!(user_id: 1, chat_id:15)
# Subscription.create!(user_id: 2, chat_id:15)

require 'rubygems'
require 'httparty'
##for google map, use leaflet https://leafletjs.com/
# response = HTTParty.get('https://randomuser.me/api/?results=5')
# #
# response["results"].each do |user|
#   User.create!(
#     firstname: user["name"]["first"].capitalize,
#     lastname: user["name"]["last"].capitalize,
#     email: user["email"],
#     password: "1",
#     large_picture: user["picture"]["large"],
#     medium_picture: user["picture"]["medium"],
#     small_picture: user["picture"]["thumbnail"],
#     city_location: user["location"]["city"],
#     state_location: user["location"]["state"]
#   )
# end

# carmen.gallardo@example.com
