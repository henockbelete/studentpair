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
user1 = User.create(first_name: "ola", last_name: "lala", email: "ola@codaisseurup.com", password: "123456")
user2 = User.create(first_name: "bola", last_name: "baba", email: "bola@codaisseurup.com", password: "123456")
user3 = User.create(first_name: "cola", last_name: "coco", email: "cola@codaisseurup.com", password: "123456")
user4 = User.create(first_name: "dula", last_name: "dodo", email: "dula@codaisseurup.com", password: "123456")
user5 = User.create(first_name: "eula", last_name: "eueu", email: "eula@codaisseurup.com", password: "123456")
user6 = User.create(first_name: "fula", last_name: "fufu", email: "fula@codaisseurup.com", password: "123456")
user7 = User.create(first_name: "gula", last_name: "gogo", email: "gula@codaisseurup.com", password: "123456")
user8 = User.create(first_name: "mula", last_name: "momo", email: "mula@codaisseurup.com", password: "123456")
user9 = User.create(first_name: "kola", last_name: "koko", email: "kola@codaisseurup.com", password: "123456")
user10 = User.create(first_name: "zola", last_name: "zozo", email: "zola@codaisseurup.com", password: "123456")



#Matches
# match1 = Match.create(day: "21/11/2017", match1: 1, match2: 2)
# match2 = Match.create(day: "22/11/2017", match1: 1, match2: 3)
# match3 = Match.create(day: "20/11/2017", match1: 3, match2: 2)
# match4 = Match.create(day: "21/11/2017", match1: 1, match2: 4)

#possible_matches

poss_match1 = PossibleMatch.create(possible_matches: [[1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [1, 8], [1, 9], [1, 10], [2, 3], [2, 4],
[2, 5], [2, 6], [2, 7], [2, 8], [2, 9], [2, 10], [3, 4], [3, 5], [3, 6], [3, 7], [3, 8], [3, 9],
[3, 10], [4, 5], [4, 6], [4, 7], [4, 8], [4, 9], [4, 10], [5, 6], [5, 7], [5, 8], [5, 9], [5, 10],
[6, 7], [6, 8], [6, 9], [6, 10], [7, 8], [7, 9], [7, 10], [8, 9], [8, 10], [9, 10]]
)
