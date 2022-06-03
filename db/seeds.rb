# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Candidate.destroy_all
Company.destroy_all
User.destroy_all
Project.destroy_all
Task.destroy_all

puts "creating users..."

user1 = User.create(email: "user1@gmail.com", password: "toto22", corporate: false)
user2 = User.create(email: "user2@gmail.com", password: "toto22", corporate: false)
user3 = User.create(email: "user3@gmail.com", password: "toto22", corporate: false)
user4 = User.create(email: "user4@gmail.com", password: "toto22", corporate: false)
user5 = User.create(email: "user5@gmail.com", password: "toto22", corporate: false)
user6 = User.create(email: "user6@gmail.com", password: "toto22", corporate: false)
user7 = User.create(email: "user7@gmail.com", password: "toto22", corporate: false)
user8 = User.create(email: "user8@gmail.com", password: "toto22", corporate: false)
user9 = User.create(email: "user9@gmail.com", password: "toto22", corporate: false)
user10 = User.create(email: "user10@gmail.com", password: "toto22", corporate: false)
user11 = User.create(email: "user11@gmail.com", password: "toto22", corporate: true)
user12 = User.create(email: "user12@gmail.com", password: "toto22", corporate: true)


puts "Creating candidate..."

candidate1 = Candidate.create(first_name: "Jean", last_name: "Pierre", sector: "TV production", role:"Directeur de production", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description: "Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user1)


candidate2 = Candidate.create(first_name: "Louis", last_name: "Emile", sector: "TV production", role:"Coiffeur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user2)


candidate3 = Candidate.create(first_name: "Marie", last_name: "Villard", sector: "TV production", role:"Décorateur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user3)


candidate4 = Candidate.create(first_name: "Carl", last_name: "Oss", sector: "TV production", role:"Dresseur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user4)


candidate5 = Candidate.create(first_name: "Wis", last_name: "Sam", sector: "TV production", role:"Chef monteur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user5)


candidate6 = Candidate.create(first_name: "Gae", last_name: "Lle", sector: "TV production", role:"Costumier", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user6)


candidate7 = Candidate.create(first_name: "Paul", last_name: "Pierre", sector: "TV production", role:"Monteur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user7)


candidate8 = Candidate.create(first_name: "Guillaume", last_name: "Proto", sector: "TV production", role:"Monteur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user8)


candidate9 = Candidate.create(first_name: "Julien", last_name: "Sac", sector: "TV production", role:"Monteur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user9)

candidate10 = Candidate.create(first_name: "Victor", last_name: "Dupont", sector: "TV production", role:"Monteur", skills: "blablablbalbalba", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Paris", user: user10)

candidate12 = Candidate.create(first_name: "Pedro", last_name: "Almodovar", sector: "Production audiovisuelle", role:"Realisateur", skills: "blasdkckdsvhudjsd", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"Aliscie ndicima gnatur, incia iumquae ptataque acearchil ex et ex eatius nima cus", address: "Barcelone", user: user12)

puts "Candidate created"



puts "Creating company..."

company1 = Company.create(name: "UGC", description: "blablabla", siret: "948957834793857", address: "Paris", user: user11)
company2 = Company.create(name: "PATHE", description: "blablabla", siret: "948957834793857", address: "Paris", user: user12)
puts "Company created"


puts "Creating projet..."
project1 = Project.create(name: "Batman", start_date: Date.today, end_date: Date.today + 5, description: "blablablablaba", company_id: company1.id)
# puts "Company created"

puts "Creating task..."

task1 = Task.new(status: "Awaiting", start_date: Date.today, end_date: Date.today - 5)
task1.project = Project.first
task1.candidate = Candidate.first
task1.save!

task2 = Task.new(status: "Accepted", start_date: Date.today, end_date: Date.today + 6)
task2.project = Project.first
task2.candidate = Candidate.last
task2.save!
puts "Task created"

review1= Review.new(content: "Il a été parfait durant ce projet", rating: 4, task_id: task1)
review2= Review.new(content: "Je le recommande totalement", rating: 5, task_id: task2)

puts "Review created"
