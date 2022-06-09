# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Task.destroy_all
Chatroom.destroy_all
Candidate.destroy_all
Company.destroy_all
User.destroy_all
Project.destroy_all


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
user13 = User.create(email: "user13@gmail.com", password: "toto22", corporate: true)


puts "Users created"

puts "Creating candidates..."

candidate1 = Candidate.create(first_name: "Jean-Jacques", last_name: "Albert", sector: "TV production", role:"Production Manager", skills: "Management, organisation", experiences: "Production Manager for La Famille Belier", description: " Production manager on several tv productions in France like La famille Bélier, Les femmes du 6ème étage", address: "Paris", user: user1)
candidate1.avatar.attach(io: File.open(Rails.root.join('app/assets/images/albert_jean-jacques.png')), filename: "avatar.png", content_type: "image/png")

candidate2 = Candidate.create(first_name: "Nadine", last_name: "Chaussonnière", sector: "TV production", role:"Production Manager", skills: " Gestion, Management", experiences: " TV-Show: Bad Banks, Poison sur LM", description:"Looking for my next interesting project", address: "Paris", user: user2)
candidate2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/nadine.png')), filename: "avatar.png", content_type: "image/png")

candidate3 = Candidate.create(first_name: "Christophe", last_name: "Lechat", sector: "TV production", role:"Chief Editor", skills: "Final cut Pro, Adobe premiere, Avid", experiences: "Video journalist / Editor at Mediawan", description:" I am really proud of my reviews. Let's have a look", address: "Paris", user: user3)
candidate3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/christophe_lechat.png')), filename: "avatar.png", content_type: "image/png")

candidate4 = Candidate.create(first_name: "Cassandre", last_name: "Picot", sector: "Movie production", role:"Make-up artist", skills: "TV and cinema make-up ", experiences: "Make", description:" I'm doing the make-up for almost every tv-program on M6", address: "Paris", user: user4)
candidate4.avatar.attach(io: File.open(Rails.root.join('app/assets/images/cassandre_picot.png')), filename: "avatar.png", content_type: "image/png")

candidate5 = Candidate.create(first_name: "Frederic", last_name: "Claude", sector: "TV production", role:"Cameraman", skills: "live recording", experiences: "Iqui cus minient, officid ebiscid quiandemolor", description:"I've spent more than a decade at the AB Group in France", address: "Paris", user: user5)
candidate5.avatar.attach(io: File.open(Rails.root.join('app/assets/images/fred_claude.png')), filename: "avatar.png", content_type: "image/png")

candidate6 = Candidate.create(first_name: "Laura", last_name: "Jaud", sector: "Live performance", role:"Live coordinator", skills: "Management", experiences: "10 years working for Live Nation France", description:" I was in charge of the Lollapolooza Festival in Paris", address: "Paris", user: user6)
candidate6.avatar.attach(io: File.open(Rails.root.join('app/assets/images/laura_jaud.png')), filename: "avatar.png", content_type: "image/png")

candidate7 = Candidate.create(first_name: "Julien", last_name: "Keita", sector: "Cultural center", role:"Campus Manager", skills: "Management, gestion, Excel", experiences: "Campus Manager at le Cube", description:" After managing several centers in Paris, I relocated in Orleans ", address: "Orleans", user: user7)
candidate7.avatar.attach(io: File.open(Rails.root.join('app/assets/images/julien.png')), filename: "avatar.png", content_type: "image/png")

candidate8 = Candidate.create(first_name: "Philippe", last_name: "Diop", sector: "Animation movie", role:"Set designer", skills: "After Effects, Photoshop, Visual effects", experiences: "4 years as set designer at Illumination Mac Guff", description:"I worked on Sing 2", address: "Paris", user: user8)
candidate8.avatar.attach(io: File.open(Rails.root.join('app/assets/images/philippe_diop.png')), filename: "avatar.png", content_type: "image/png")

candidate9 = Candidate.create(first_name: "Myriam", last_name: "Gilles", sector: "Audio-book publishing", role:"Audio production Manager", skills: "Management, Marketing strategy", experiences: "12 years working at Audible studios", description:"I'm used to work on big budget audio production", address: "Paris", user: user9)
candidate9.avatar.attach(io: File.open(Rails.root.join('app/assets/images/myriam_gilles.png')), filename: "avatar.png", content_type: "image/png")

candidate10 = Candidate.create(first_name: "Dominique", last_name: "Besnehard", sector: "TV production", role:"Executive producer", skills: "Casting, Management ", experiences: "Five seasons of 10 pour cent", description:"After a life as a casting director, I've decided to jump behind the scene", address: "Paris", user: user10)
candidate10.avatar.attach(io: File.open(Rails.root.join('app/assets/images/dominique.png')), filename: "avatar.png", content_type: "image/png")

puts "Candidates created"



puts "Creating companies..."


company1 = Company.create(name: "UGC CINE CITE", description: "le premier cinéma au monde en termes de fréquentation et la première salle Art & essai de France", siret: "34780600200023", address: "Neuilly-sur-seine", user: user11)
company1.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo_ugc_2001-2018.svg.png')), filename: "avatar.png", content_type: "image/png")

company2 = Company.create(name: "PATHE", description: "Acteur historique du cinéma, Pathé est aujourd’hui premier studio de cinéma français et leader de l’exploitation de salles en Europe continentale", siret: "30758286600041", address: "Neuilly-sur-seine", user: user12)
company2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/pathe_logo.svg.png')), filename: "avatar.png", content_type: "image/png")

company3 = Company.create(name: "JEAN-MARC DUMONTET PRODUCTION", description: "Acteur incontournable de la scène humoristique et théâtrale en France, Jean-Marc Dumontet est à la fois producteur d’humoristes et de pièces de théâtre et propriétaire de plusieurs salles de spectacles à Paris.", siret: "38842707200029", address: "Paris", user: user13)
company3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo_jmdp.png')), filename: "avatar.png", content_type: "image/png")

puts "Companies created"


puts "Creating projects..."

project1 = Project.create(name: "Black Panther 2", start_date: Date.today - 10, end_date: Date.today + 65, description: "Suite de la saga de Disney", company_id: company1.id, archived: false)
project4 = Project.create(name: "Indinia Jones 5", start_date: Date.today, end_date: Date.today + 365, description: "Suite de la saga créé par Steven Spielberg", company_id: company2.id, archived: false)
project3 = Project.create(name: "HPI Saison 2", start_date: Date.today - 30, end_date: Date.today + 76, description: "160 de QI et une bonne dose d’insoumission, va voir son destin de femme de ménage chamboulé lorsque ses capacités hors norme sont repérées par la police qui lui propose un poste de consultante. Problème : Morgane déteste les flics !", company_id: company1.id, archived: false)
project2 = Project.create(name: "Fary engagé", start_date: Date.today - 1, end_date: Date.today + 10, description: "Tournée internationale du stand-upper Fary avec son nouveau spectacle", company_id: company3.id, archived: true)

puts "Projects created"

puts "Creating tasks..."


task1 = Task.new(status: "Accepted", start_date: Date.today - 5, end_date: Date.today + 6)
task1.project = Project.first
task1.candidate = Candidate.first
task1.save!
chatroom1 = Chatroom.create(name: Project.first.name, task: task1)

task2 = Task.new(status: "Awaiting", start_date: Date.today + 3, end_date: Date.today + 15)
task2.project = Project.first
task2.candidate = Candidate.last
task2.save!
chatroom2 = Chatroom.create(name: Project.first.name, task: task2)

task3 = Task.new(status: "Archived", start_date: Date.today - 18, end_date: Date.today - 5)
task3.project = Project.first
task3.candidate = Candidate.last
task3.save!
chatroom3 = Chatroom.create(name: Project.first.name, task: task3)

task4 = Task.new(status: "Accepted", start_date: Date.today + 23, end_date: Date.today + 45)
task4.project = Project.last
task4.candidate = Candidate.last
task4.save!
chatroom4 = Chatroom.create(name: Project.first.name, task: task4)

task5 = Task.new(status: "Archived", start_date: Date.today - 10, end_date: Date.today - 6)
task5.project = Project.last
task5.candidate = Candidate.last
task5.save!
chatroom5 = Chatroom.create(name: Project.first.name, task: task5)

task6 = Task.new(status: "Accepted", start_date: Date.today + 3, end_date: Date.today + 23)
task6.project = Project.last
task6.candidate = Candidate.first
task6.save!
chatroom6 = Chatroom.create(name: Project.first.name, task: task6)

task7 = Task.new(status: "Awaiting", start_date: Date.today + 28, end_date: Date.today + 35)
task7.project = Project.last
task7.candidate = Candidate.first
task7.save!
chatroom7 = Chatroom.create(name: Project.first.name, task: task7)

task8 = Task.new(status: "Awaiting", start_date: Date.today - 7, end_date: Date.today )
task8.project = Project.last
task8.candidate = Candidate.first
task8.save!
chatroom8 = Chatroom.create(name: Project.first.name, task: task8)

puts "Tasks and chatrooms created"

puts "Creating reviews..."

review1= Review.new(content: "Il a été parfait durant ce projet", rating: 4, task_id: task1)
review2= Review.new(content: "Pafait pour le job. Très content de l'avoir rencontré. Le contacterai pour un prochain projet", rating: 5, task_id: task5)
review3= Review.new(content: "Je remercie Dominique d'avoir accepté de participer au film. Sans lui, le tournage n'aurait pas pu se faire.", rating: 5, task_id: task3)


puts "Reviews created"
