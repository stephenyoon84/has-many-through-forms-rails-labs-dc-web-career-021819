# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
User.destroy_all
Post.destroy_all
Comment.destroy_all
PostCategory.destroy_all
Category.create(name: "A")
Category.create(name: "B")
User.create(username: "user1", email: "user1@user.com")
User.create(username: "user2", email: "user2@user.com")
User.create(username: "user3", email: "user3@user.com")
Post.create(title: "title1", content: "This is first post.")
Post.create(title:"title2", content: "This is second post.")
PostCategory.create(post_id: 1, category_id: 1)
PostCategory.create(post_id: 2, category_id: 2)
