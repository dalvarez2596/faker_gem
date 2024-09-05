# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# This one is slower cause is using create row by row it generates a new insert by each statement for each Post.

# Uncomment this code from below to use the insert slower
# puts "Starting to seed the database"
# 10000.times do |i|
#   puts i
#   Post.create(title: Faker::Company.name, body: Faker::Company.bs)
# end
# puts "Finished seeding the database"

# A way to combine all those inserts into a single could be using the upsert_all_method or also the insert_all both do the same,
# remember that this does not instatiate any model nor does it trigger Active Record callbacks or validations.

puts "Starting to seed the database using upsert_all"
# First we define an empty array where we will be adding the posts
posts = []
10000.times do |element|
  posts << { title: Faker::Company.name, body: Faker::Company.bs }
end

# Once we add the 10 000 records we insert all in one using the upsert_all
# Post.upsert_all posts
# Or we can do the same using the insert all comment the above one and uncomment the one from below to use insert and see the behaviour
Post.insert_all posts
puts "Finished seeding the database"
