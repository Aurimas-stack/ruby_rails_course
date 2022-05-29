# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: "user1", password: "password")
User.create(username: "user2", password: "password")
User.create(username: "user3", password: "password")
User.create(username: "user4", password: "password")
User.create(username: "user5", password: "password")

Message.create(body: "message1", user_id: 1)
Message.create(body: "message5", user_id: 3)
Message.create(body: "message4", user_id: 2)
