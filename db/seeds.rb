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
user14 = User.create(email: "user14@gmail.com", password: "toto22", corporate: false)
user15 = User.create(email: "user15@gmail.com", password: "toto22", corporate: false)
user16 = User.create(email: "user16@gmail.com", password: "toto22", corporate: false)



puts "Users created"

puts "Creating candidates..."

candidate1 = Candidate.create(first_name: "Denis", last_name: "Brassard", sector: "TV production", role: "Cameraman", skills: "Management, organisation", description: " Camaraman on several tv productions in France like La famille Bélier, Les femmes du 6ème étage", address: "Paris", user: user1)
candidate1.avatar.attach(io: File.open(Rails.root.join('app/assets/images/albert_jean-jacques.png')), filename: "avatar.png", content_type: "image/png")
candidate1.cv.attach(io: File.open(Rails.root.join('app/assets/images/cvdenis.png')), filename: "cv.png", content_type: "image/png")

candidate2 = Candidate.create(first_name: "Nadine", last_name: "Chaussonnière", sector: "TV production", role:"Production Manager", skills: " Gestion, Management", description:"Looking for my next interesting project", address: "Paris", user: user2)
candidate2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/nadine.png')), filename: "avatar.png", content_type: "image/png")

candidate3 = Candidate.create(first_name: "Christophe", last_name: "Lechat", sector: "TV production", role:"Chief Editor", skills: "Final cut Pro, Adobe premiere, Avid", description:" I am really proud of my reviews. Let's have a look", address: "Paris", user: user3)
candidate3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/christophe_lechat.png')), filename: "avatar.png", content_type: "image/png")

candidate4 = Candidate.create(first_name: "Cassandre", last_name: "Picot", sector: "Movie production", role:"Make-up artist", skills: "TV and cinema make-up ", description:" I'm doing the make-up for almost every tv-program on M6", address: "Paris", user: user4)
candidate4.avatar.attach(io: File.open(Rails.root.join('app/assets/images/cassandre_picot.png')), filename: "avatar.png", content_type: "image/png")

candidate5 = Candidate.create(first_name: "Frederic", last_name: "Claude", sector: "TV production", role:"Cameraman", skills: "live recording", description:"I've spent more than a decade at the AB Group in France", address: "Paris", user: user5)
candidate5.avatar.attach(io: File.open(Rails.root.join('app/assets/images/fred_claude.png')), filename: "avatar.png", content_type: "image/png")

candidate6 = Candidate.create(first_name: "Laura", last_name: "Jaud", sector: "Live performance", role:"Live coordinator", skills: "Management", description:" I was in charge of the Lollapolooza Festival in Paris", address: "Paris", user: user6)
candidate6.avatar.attach(io: File.open(Rails.root.join('app/assets/images/laura_jaud.png')), filename: "avatar.png", content_type: "image/png")

candidate7 = Candidate.create(first_name: "Julien", last_name: "Keita", sector: "Cultural center", role:"Campus Manager", skills: "Management, gestion, Excel", description:" After managing several centers in Paris, I relocated in Orleans ", address: "Orleans", user: user7)
candidate7.avatar.attach(io: File.open(Rails.root.join('app/assets/images/julien.png')), filename: "avatar.png", content_type: "image/png")

candidate8 = Candidate.create(first_name: "Philippe", last_name: "Diop", sector: "Animation movie", role:"Set designer", skills: "After Effects, Photoshop, Visual effects", description:"I worked on Sing 2", address: "Paris", user: user8)
candidate8.avatar.attach(io: File.open(Rails.root.join('app/assets/images/philippe_diop.png')), filename: "avatar.png", content_type: "image/png")

candidate9 = Candidate.create(first_name: "Myriam", last_name: "Gilles", sector: "Audio-book publishing", role:"Audio production Manager", skills: "Management, Marketing strategy", description:"I'm used to work on big budget audio production", address: "Paris", user: user9)
candidate9.avatar.attach(io: File.open(Rails.root.join('app/assets/images/myriam_gilles.png')), filename: "avatar.png", content_type: "image/png")

candidate10 = Candidate.create(first_name: "Dominique", last_name: "Besnehard", sector: "TV production", role:"Executive producer", skills: "Casting, Management ", description:"After a life as a casting director, I've decided to jump behind the scene", address: "Paris", user: user10)
candidate10.avatar.attach(io: File.open(Rails.root.join('app/assets/images/dominique.png')), filename: "avatar.png", content_type: "image/png")

candidate11 = Candidate.create(first_name: "Maxime", last_name: "Delayat", sector: "Movie production", role:"Cameraman", skills: "Prise de vue, grue", description:"Easy to work with and to direct", address: "Paris", user: user14)
candidate11.avatar.attach(io: File.open(Rails.root.join('app/assets/images/maximedelayat.png')), filename: "avatar.png", content_type: "image/png")

candidate12 = Candidate.create(first_name: "William", last_name: "Eneau", sector: "Movie production", role:"Cameraman", skills: "Prise de vue, grue", description:"I can move everywhere in France", address: "Paris", user: user15)
candidate12.avatar.attach(io: File.open(Rails.root.join('app/assets/images/williameneau.png')), filename: "avatar.png", content_type: "image/png")

candidate13 = Candidate.create(first_name: "Nastasia", last_name: "Moreira", sector: "Movie production", role:"Cameraman", skills: "Prise de vue, grue", description:"young with experience", address: "Paris", user: user16)
candidate13.avatar.attach(io: File.open(Rails.root.join('app/assets/images/nastasiamoreira.png')), filename: "avatar.png", content_type: "image/png")


puts "Candidates created"



puts "Creating companies..."


company1 = Company.create(name: "UGC CINE CITE", description: "le premier cinéma au monde en termes de fréquentation et la première salle Art & essai de France", siret: "34780600200023", address: "Neuilly-sur-seine", user: user11)
company1.avatar.attach(io: File.open(Rails.root.join('app/assets/images/ugc.png')), filename: "avatar.png", content_type: "image/png")

company2 = Company.create(name: "PATHE", description: "Acteur historique du cinéma, Pathé est aujourd’hui premier studio de cinéma français et leader de l’exploitation de salles en Europe continentale", siret: "30758286600041", address: "Neuilly-sur-seine", user: user12)
company2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/pathe_logo.svg.png')), filename: "avatar.png", content_type: "image/png")

company3 = Company.create(name: "JEAN-MARC DUMONTET PRODUCTION", description: "Acteur incontournable de la scène humoristique et théâtrale en France, Jean-Marc Dumontet est à la fois producteur d’humoristes et de pièces de théâtre et propriétaire de plusieurs salles de spectacles à Paris.", siret: "38842707200029", address: "Paris", user: user13)
company3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/logo_jmdp.png')), filename: "avatar.png", content_type: "image/png")

puts "Companies created"

puts "Creating projects..."

project1 = Project.create(name: "Black Panther 2", start_date: Date.today - 14, end_date: Date.today + 65, description: "FICHE DE POSTE CAMÉRAMAN - Black Panther 2
Qui sommes nous ?
UGC est un acteur majeur du paysage cinématographique français et l’une des principales entreprises de cinéma européennes.
Présent en France (49 cinémas, 510 salles) et en Belgique (7 cinémas, 74 salles), UGC compte 584 salles.
Le Groupe créé le concept UGC Ciné Cité en 1993 dont le premier a été l’UGC Ciné Cité Les Halles, ouvert en 1995, devenu en 2017 le premier cinéma au monde en termes de fréquentation* et la première salle Art & essai de France.Erigés en véritables centres de vie, de culture et de divertissement, les cinémas UGC Ciné Cité sont situés au cœur de l’environnement urbain. Le Groupe joue ainsi un rôle déterminant dans le développement et la vie des quartiers. Avec ses salles disposées en gradins et bénéficiant des équipements techniques les plus performants, les UGC Ciné Cité permettent de proposer une large diversité de films. L’une des caractéristiques fondamentales de ce concept est la politique de programmation dont le spectre, très large, propose des films grand public mais aussi des films d’Art et Essai, tous présentés en V.O.

Intitulé de Poste
Cameraman / Woman nouveaux médias
Domaine Fonctionnel
Développement de contenu web

Localisation géographique
Région ile de france
Activités Principales
Le ou la caméraman de UGC a pour mission d’assurer le développement du contenu en image pour un media culturel.Selon les indications du réalisateur, il fera les prises de vue lors du tournageLe ou la Caméraman sera autonome et en capacité de raconter une histoire d’un événement, d’un territoire ou d’une entreprise, en images.
Savoir-faire
Production : installation matériel pour tournage. Cadrage , réglage lumières / sonpost production selon respect de la charte graphique de l’entrepriseSavoir Raconter un histoire dans la finalité du reportagele ou la caméraman devra être équipé des moyens de tournage et post production. (peut être aussi fourni par l’entreprise)
Savoir être
Passionné /Avoir le sens des relations humaines Diplomate / respectueuxDiscrétion (selon les lieux de tournage (par ex spectacles) Dynamique /Disponible /Autonome
Adaptabilité / réactivitéCuriosité / ouverture d’esprit / intérêt créatif.Centre d’intérêts pour les arts est le spectacles bienvenus
Expérience dans ce domaine appréciéeStatut du poste : FreelanceRémunération au reportage + Commission si apporteur d’affaires.

Cameraman / Woman nouveaux médias
", company_id: company1.id, archived: false)
project2 = Project.create(name: "Fary engagé", start_date: Date.today - 13, end_date: Date.today + 10, description: "Tournée internationale du stand-upper Fary avec son nouveau spectacle", company_id: company3.id, archived: true)
project3 = Project.create(name: "HPI Saison 2", start_date: Date.today - 30, end_date: Date.today + 76, description: "160 de QI et une bonne dose d’insoumission, va voir son destin de femme de ménage chamboulé lorsque ses capacités hors norme sont repérées par la police qui lui propose un poste de consultante. Problème : Morgane déteste les flics !", company_id: company2.id, archived: true)
project4 = Project.create(name: "Indinia Jones 5", start_date: Date.today, end_date: Date.today + 365, description: "Suite de la saga créé par Steven Spielberg", company_id: company1.id, archived: true)

puts "Projects created"

puts "Creating tasks..."

candidates = Candidate.all
companies = Company.all
projects = Project.all

task1 = Task.new(status: "Archived", start_date: Date.today - 10, end_date: Date.today - 5)
task1.project = projects[2]
task1.candidate = candidates[0]
task1.save!

task2 = Task.new(status: "Archived", start_date: Date.today - 4, end_date: Date.today - 2)
task2.project = projects[1]
task2.candidate = candidates[0]
task2.save!

task3 = Task.new(status: "Accepted", start_date: Date.today - 12, end_date: Date.today - 11)
task3.project = projects[0]
task3.candidate = candidates[2]
task3.save!

puts "Tasks created"

puts "Creating reviews..."

review1 = Review.new
review1.content = "Super efficace! Nous avons adoré travaillé avec Denis."
review1.rating = 5
review1.task = task1

review2 = Review.new
review2.content = "Très professionnel, je recommande."
review2.rating = 5
review2.task = task2

puts "Reviews created"
