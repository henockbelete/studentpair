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
user1 = User.create(first_name: "Isis", last_name: "van der Plas", email: "isis@codaisseurup.com", password: "123456")
user2 = User.create(first_name: "Luciana", last_name: "Gonçalves", email: "luciana@codaisseurup.com", password: "123456")
user3 = User.create(first_name: "Ward", last_name: "Madoyan", email: "ward@codaisseurup.com", password: "123456")
user4 = User.create(first_name: "Lara", last_name: "Wagner", email: "lara@codaisseurup.com", password: "123456")
user5 = User.create(first_name: "Tea", last_name: "Teearu", email: "tea@codaisseurup.com", password: "123456")
user6 = User.create(first_name: "Ha", last_name: "Doan", email: "ha@codaisseurup.com", password: "123456")
user7 = User.create(first_name: "Jesse", last_name: "Van Der Heijden", email: "jesse@codaisseurup.com", password: "123456")
user8 = User.create(first_name: "Karlie", last_name: "Lenfeld", email: "karlie@codaisseurup.com", password: "123456")
user9 = User.create(first_name: "Robin", last_name: "Oh", email: "robin@codaisseurup.com", password: "123456")
user10 = User.create(first_name: "Anna", last_name: "Ruotanen", email: "anna@codaisseurup.com", password: "123456")


#Possible_matches

poss_match1 = PossibleMatch.create(possible_matches: [[2, 3], [2, 4], [2, 5], [2, 6], [2, 7], [2, 8], [2, 9], [2, 10], [2, 11], [3, 4], [3, 5],
[3, 6], [3, 7], [3, 8], [3, 9], [3, 10], [3, 11], [4, 5], [4, 6], [4, 7], [4, 8], [4, 9], [4, 10],
[4, 11], [5, 6], [5, 7], [5, 8], [5, 9], [5, 10], [5, 11], [6, 7], [6, 8], [6, 9], [6, 10], [6, 11],
 [7, 8], [7, 9], [7, 10], [7, 11], [8, 9], [8, 10], [8, 11], [9, 10], [9, 11], [10, 11]]
)
