# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! password: "123456", email: "loic.redon@gmail.com", first_name: "Loïc", last_name: "Redon", phone: "0652770554", address: "Quai du Lot"
User.create! password: "123456", email: "nabster@gmail.com", first_name: "Nabil", last_name: "Labrazouf", phone: "0652770555", address: "Impasse du Maroc "
User.create! password: "123456", email: "tomtom@gmail.com", first_name: "Tom", last_name: "Oeuf", phone: "0652770560", address: "Rue de Varenne"
User.create! password: "123456", email: "monaco@gmail.com", first_name: "Zaken", last_name: "Marezzi", phone: "0652770599", address: "Voie Georges-Pompidou"
User.create! password: "123456", email: "corniaud@gmail.com", first_name: "Alex", last_name: "Corniaud", phone: "0652776069", address: "Villa des Entrepreneurs"

User.create! password: "123456", email: "larque@gmail.com", coach: true, first_name: "Jean-Michel", last_name: "Larqué", phone: "0652770202", address: "Impasse des stéphanois", licence: "BPJEPS", location: "Boulevard Beaumarchais"
User.create! password: "123456", email: "courbis@gmail.com", coach: true, first_name: "Rolland", last_name: "Courbis", phone: "0652770245", address: "Avenue Ajaccio", licence: "none", location: "Rue de la Paix"
User.create! password: "123456", email: "garcia@gmail.com", coach: true, first_name: "Roudy", last_name: "Garcia", phone: "0652707070", address: "Impasse de la défaite", licence: "BPJEPS", location: "Rue de Vaugirard"
User.create! password: "123456", email: "genesio@gmail.com", coach: true, first_name: "Bruno", last_name: "Genesio", phone: "0652708080", address: "Allée Adrienne-Lecouvreur", licence: "BPJEPS", location: "Allée Adrienne-Lecouvreur"
User.create! password: "123456", email: "amraoui@gmail.com", coach: true, first_name: "Myriam", last_name: "Amraoui", phone: "0652707979", address: "Impasse des Jardiniers", licence: "BPJEPS", location: "7, rue de paradis"

Activity.create! name: "Boxe anglaise", category: "Boxe", description: "La boxe anglaise, aussi appelée le noble art, est un sport de combat dans lequel deux adversaires, de même catégorie de poids et de même sexe, se rencontrent sur un ring, munis de gants rembourrés afin de limiter le risque de coupure, et s'échangent des coups de poings, portés au visage et au buste. Le combat est divisé en intervalles de temps, les rounds, séparés par une minute de repos annoncée par une cloche où le pugiliste pourra être conseillé et soigné si besoin."
Activity.create! name: "Self-défense", category: "Self-défense", description: "Apprendre à se défendre en toute circonstance"
Activity.create! name: "Jogging", category: "Remise en forme", description: "Pour tous les pieds palmés de France et de Navarre"
Activity.create! name: "Yoga-Hatha", category: "Yoga", description: "Si la flemme était un sport, on l'appelerait le 'Yoga'"
Activity.create! name: "Boxe thaïlandaise", category: "Boxe", description: "La boxe anglaise, aussi appelée le noble art, est un sport de combat dans lequel deux adversaires, de même catégorie de poids et de même sexe, se rencontrent sur un ring, munis de gants rembourrés afin de limiter le risque de coupure, et s'échangent des coups de poings, portés au visage et au buste. Le combat est divisé en intervalles de temps, les rounds, séparés par une minute de repos annoncée par une cloche où le pugiliste pourra être conseillé et soigné si besoin."
