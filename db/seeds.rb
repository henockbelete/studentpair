# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Match.delete_all

# Users
miriam = User.create(first_name: "Miriam", last_name: "asdf", email: "miriam@codaisseurup.com", password: "123456", admin: true)
wouter = User.create(first_name: "wouter", last_name: "asdf", email: "wouter@codaisseurup.com", password: "123456")
mat = User.create(first_name: "mat", last_name: "asdf", email: "mat@codaisseurup.com", password: "123456")
user = User.create(first_name: "user", last_name: "asdf", email: "user@codaisseurup.com", password: "123456")



#Matches
match1 = Match.create(day: "21/11/2017", match1: 1, match2: 2)
match2 = Match.create(day: "22/11/2017", match1: 1, match2: 3)
match3 = Match.create(day: "20/11/2017", match1: 3, match2: 2)
match4 = Match.create(day: "21/11/2017", match1: 1, match2: 4)
