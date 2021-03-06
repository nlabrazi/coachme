# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

p " *********** "
p " Begin seed "
p " *********** "

p "Destroy curent data..."

p "Destroying Review... #{Review.count} "
Review.destroy_all
p "Destroying Room... #{Room.count} "
Room.destroy_all
p "Destroying Booking... #{Booking.count} "
Booking.destroy_all
p "Destroying CoachActivity... #{CoachActivity.count} "
CoachActivity.destroy_all
p "Destroying Activity... #{Activity.count} "
Activity.destroy_all
p "Destroying User... #{User.count} "
User.destroy_all
p "-----------------------"

p "Creating users..."

photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/loic_baitrx.jpg")
user1 = User.create! password: "123456", email: "loic.redon@gmail.com", first_name: "Loïc", last_name: "Redon", phone: "0652770554", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France"
user1.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/jpg')

photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/Nabs_ya13ra.jpg")
user2 = User.create! password: "123456", email: "nabster@gmail.com", first_name: "Nabil", last_name: "Labrazouf", phone: "0652770555", address: "93 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France"
user2.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/jpg')

photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590668053/j773fl0ki26qrq4x8g3b96m0ez2i.jpg")
user3 = User.create! password: "123456", email: "tomtom@gmail.com", first_name: "Tom", last_name: "Oeuf", phone: "0652770560", address: "70 Rue Rodier, Paris 9e Arrondissement, Île-de-France, France"
user3.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/png')

photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/zaken_av1lw9.jpg")
user4 = User.create! password: "123456", email: "monaco@gmail.com", first_name: "Zaken", last_name: "Marezzi", phone: "0652770599", address: "60 Rue Rodier, Paris 9e Arrondissement, Île-de-France, France"
user4.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/jpg')

photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/zaken_av1lw9.jpg")
user5 = User.create! password: "123456", email: "corniaud@gmail.com", first_name: "Alex", last_name: "Corniaud", phone: "0652776069", address: "91 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France"
user5.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/jpg')

p "#{User.count} created..."
p "-----------------------"

p "Creating coach..."


photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746649/larque_d3dkcc.jpg")
coach1 = User.create! password: "123456", email: "larque@gmail.com", coach: true, first_name: "Jean-Michel", last_name: "Larqué", phone: "0652770202", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "BPJEPS", location: 10
coach1.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746649/Courbis_wqcrvm.jpg")
coach2 = User.create! password: "123456", email: "courbis@gmail.com", coach: true, first_name: "Rolland", last_name: "Courbis", phone: "0652770245", address: "11 rue de Sévigné, Paris 3e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "JEPS / BAPAAT", location: 6
coach2.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746649/Garcia_ovirej.jpg")
coach3 = User.create! password: "123456", email: "garcia@gmail.com", coach: true, first_name: "Roudy", last_name: "Garcia", phone: "0652707070", address: "104 Quai de Jemmapes, Paris 10e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "BAPAAT", location: 6
coach3.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746649/Genesio_p8xjix.jpg")
coach4 = User.create! password: "123456", email: "genesio@gmail.com", coach: true, first_name: "Bruno", last_name: "Genesio", phone: "0652708080", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "BPJEPS / DEMM", location: 6
coach4.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746649/Amraoui_w0hqkd.jpg")
coach5 = User.create! password: "123456", email: "amraoui@gmail.com", coach: true, first_name: "Myriam", last_name: "Amraoui", phone: "0652707979", address: "64 rue Rochechouart, Paris 9e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "JEPS / DEMM", location: 6
coach5.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/Lescault_sqrsu6.jpg")
coach6 = User.create! password: "123456", email: "julielescault@gmail.com", coach: true, first_name: "Julie", last_name: "Lescault", phone: "0752770202", address: "12 Avenue de l'Opéra, Paris 1er Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "BAPAAT", location: 6
coach6.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746649/demonac_gpk78h.jpg")
coach7 = User.create! password: "123456", email: "stefdemonac@gmail.com", coach: true, first_name: "Stéphanie", last_name: "De Monaco", phone: "0752770245", address: "2 Rue Rougemont, Paris 9e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "BPJEPS", location: 6
coach7.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/LeSerpent_s4uzzi.jpg")
coach8 = User.create! password: "123456", email: "moha@gmail.com", coach: true, first_name: "Moha", last_name: "Le Serpent", phone: "0752707070", address: "20 Rue Germain Pilon, Paris 18e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "BAPAA / DEMM", location: 6
coach8.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/TSR_dgeagr.jpg")
coach9 = User.create! password: "123456", email: "hugo@gmail.com", coach: true, first_name: "Hugo", last_name: "TSR", phone: "0752708080", address: "65 Rue Beaubourg, Paris 3e Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "JEPS / DEMM", location: 6
coach9.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590746650/Strife_gtfphi.jpg")
coach10 = User.create! password: "123456", email: "cloud@gmail.com", coach: true, first_name: "Cloud", last_name: "Strife", phone: "0752707979", address: "12 Rue Montmartre, Paris 1er Arrondissement, Île-de-France, France", legal: "Règlement sur après le cours", licence: "BAPAAT", location: 6
coach10.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

p "#{User.coach.count} created..."
p "-----------------------"

p "Creating activities..."

activity1 = Activity.create! name: "Boxe thaï", category: "Sport de combat", description: "La boxe thaïlandaise abrégée boxe thaï ou encore muay-thaï est un art marial pieds points. C’est probablement la boxe la plus complète puisqu’on utilise toutes les parties du corps pour frapper son opposant. La boxe anglaise utilise les poings, la boxe française utilise les pieds et les poings, et la boxe thaï ajoute les coudes et les genoux."
activity2 = Activity.create! name: "Danse", category: "Sports de danse", description: "Idéal pour tous les âges. Parfait pour faire des rencontres, ou bien comme activité de couple. Offre un sentiment libérateur. Réduit le stress. Effets positifs sur le système cardio-vasculaire. Avec ton partenaire, tu apprends différents pas de danse et mouvements de différentes danses. Cela nécessite d’être concentré et de s’adapter à son partenaire."
activity3 = Activity.create! name: "Breakdance", category: "Sports de danse", description: "Pour les sportifs qui savent déjà bien bouger ou qui souhaitent apprendre. Renforce l’ensemble du corps. Améliore aussi la souplesse et la coordination. Le breakdance est une danse urbaine. Tu y apprends des mouvements et des figures impressionnantes. Les mouvements s’exécutent principalement au sol. Les différentes poses s’enchaînent rapidement. Avoir de l’expérience en gymnastique est un plus."
activity4 = Activity.create! name: "Hip-Hop ", category: "Sports de danse", description: "Pour les débutants comme pour les danseurs expérimentés. Pour les personnes qui veulent aussi bien danser seul ou en groupe. Entraîne la coordination, la souplesse et l’endurance. Le hip-hop est une danse urbaine comme le breakdance. Tu apprends à te bouger seul ou en groupe sur des sons hip-hop."
activity5 = Activity.create! name: "Judo", category: "Sport de combat", description: "L’art martial le plus pratiqué au monde est fait pour tous. Les prises de judo sont particulièrement intéressantes pour apprendre à utiliser son poids de corps et celui de l’adversaire. Améliore la force, l’endurance et la souplesse. Renforce la confiance en soi grâce aux règles de discipline, self-control et de respect. Tu apprends à mettre ton adversaire à terre en utilisant des prises de judo. Donner des coups ou se marcher dessus est strictement interdit. En dehors des tournois, il y a aussi de nombreux stages et examens permettant aux judokas de passer au niveau supérieur et d’apprendre de nouvelles prises et de nouvelles techniques de chute."
activity6 = Activity.create! name: "Boxe", category: "Sport de combat", description: "Pour toutes les personnes qui souhaitent se défouler et faire le plein d’adrénaline. Pour les durs à cuire, mais aussi pour ceux qui veulent apprendre à surmonter leurs peurs. La boxe entraîne surtout l’endurance musculaire et la vitesse. Ce sport renforce aussi le mental, et la confiance en soi, en apprenant à encaisser les coups. Avec la boxe, tu apprends différentes techniques de coup de poing pour vaincre ton adversaire, soit en marquant des points, soit en le mettant K.O. Même si tu n’utilises que les poings, un match de boxe est très épuisant et requiert beaucoup d’endurance musculaire."
activity7 = Activity.create! name: "Kick-Boxing ", category: "Sport de combat", description: "Pour toutes les personnes qui souhaitent boxer avec les poings mais aussi avec les pieds. Comme avec la boxe, c’est surtout le mental et l’endurance musculaire que tu entraînes. Avec ce sport, la mobilité joue aussi un rôle important. Avec le kick-boxing, en plus des coups de poing, tu peux aussi donner des coups de pied ou même des coups de tibias pour vaincre ton adversaire."
activity9 = Activity.create! name: "Krav-Maga ", category: "Sport de combat", description: "Pour les personnes qui n’ont pas envie de faire de la compétition, mais qui veulent quand même apprendre à se défendre rapidement et efficacement. Renforce la confiance en soi. Tu apprends à te défendre dans différentes situations. Ce n’est pas la force qui compte, mais la vitesse de réaction pour se créer des ouvertures et échapper à l’adversaire."
activity11 = Activity.create! name: "Ski & Snowboard ", category: "Sports d’hiver ", description: "Pour les amoureux de la montagne, les personnes qui n’ont pas froid aux yeux et qui souhaitent s’entraîner à l’extérieur, même en hiver. Comme avec le ski nautique et le wakeboard, tu apprends à mieux te tenir et à rester en équilibre. Renforce aussi la stabilité des genoux. Tu descends une piste pentue avec des skis ou une planche de snowboard. Tu dois toujours adapter ta direction, freiner, balancer ton poids et rester concentré pour ne pas te retrouver le nez dans la poudreuse."
activity12 = Activity.create! name: "Calisthenics", category: "Sports urbains ", description: "Parfait pour les habitants des grandes villes et les personnes qui aiment les acrobaties à la barre fixe ou aux barres parallèles. Pour tous ceux qui veulent développer leur force et le contrôle de leur corps. Améliore la force, la mobilité, le contrôle du corps surtout au niveau du haut du corps. Tu t’entraînes avec différents exercices statiques ou dynamiques sur différents types de barres (fixes, parallèles, verticales, horizontales). L’entraînement se fait plutôt dans un parc fitness."
activity13 = Activity.create! name: "Parkour ", category: "Sports urbains ", description: "Pour les personnes citadines hyperactives, qui aiment utiliser l’espace urbain comme terrain de jeu. Pour les personnes qui aiment faire de l’escalade, de l’acrobatie et autres prouesses physiques. Le parkour permet d’avoir un meilleur contrôle de son corps. Renforce énormément la coordination et la détente pour les sauts. Tu fais du sport en pleine ville ou dans des parcs spécialement conçus pour le parkour. Tu dois passer les différents obstacles en courant, en escaladant, en sautant. Avec le temps et l’expérience, tu incorpores de plus en plus de figures acrobatiques."
activity14 = Activity.create! name: "Skateboard", category: "Sports urbains ", description: "Pour les citadins qui préfèrent se déplacer sur une planche mais qui n’ont ni mer, ni montagne à côté. Améliore la coordination. En skate, tu utilises une planche à 4 roulettes pour te déplacer. Ce sport se pratique généralement dans des skates parcs où tu t’entraînes à faire différentes figures en skate."
activity15 = Activity.create! name: "Running", category: "Sports d’endurance ", description: "Les personnes souhaitant perdre du poids ou bien améliorer leur cardio. Améliore le système cardio-vasculaire et l’endurance. Comme son nom l’indique, tu cours. En règle générale, tu essaies d’augmenter progressivement la distance, le temps ou la vitesse de course. De cette façon, tu repousses toujours tes limites."
activity16 = Activity.create! name: "Natation  ", category: "Sports d’endurance ", description: "Les personnes qui aiment l’eau et celles qui ont des problèmes d’articulation. Perte de poids. Amélioration de l’endurance. Renforcement musculaire de tout le corps. Amélioration de la mobilité des épaules. Tu nages en utilisant différentes techniques. La résistance de l’eau rend les déplacements difficiles, ce qui déclenche l’effort. Les mouvements dans l’eau n’ont aucun impact, c’est pourquoi la natation est idéale pour épargner ses articulations."
activity17 = Activity.create! name: "Cyclisme", category: "Sports d’endurance ", description: "Les amoureux de la nature. Les personnes avec des problèmes d’articulation. Amélioration du système cardio-vasculaire et de l’endurance. Renforcement musculaire au niveau des jambes. À l’instar de la course à pied, avec le vélo, tu essaies d’augmenter progressivement la distance, le temps et la vitesse de course."
activity19 = Activity.create! name: "BodyBuilding", category: "Sports de force", description: "Pour les perfectionnistes, et les personnes super disciplinées et qui se soucient du moindre détail. Renforcement et développement de tous les muscles, tout en réduisant la masse grasse. Tu t’entraînes avec des poids et des machines. Tu pratiques à la fois des exercices de base qui font travailler plusieurs muscles, et des exercices d’isolation, pour travailler chaque muscle indépendamment."
activity20 = Activity.create! name: "Fitness ", category: "Sports de force", description: "Les personnes préférant se laisser guider, s’entraîner en groupe ou qui n’ont pas beaucoup d’expérience. Les effets dépendent du cours. Certains cours se focalisent sur le renforcement musculaire, d’autres cours sur le cardio ou encore le brûlage de graisse, la mobilité ou la coordination. La plupart des cours sont menés par un coach. L’entraîneur se tient face au groupe et présente les exercices. Pendant que le groupe s’entraîne, il vérifie la posture et l’exécution de chacun pour corriger et motiver les participants."
activity21 = Activity.create! name: "HIIT", category: "Sports de force", description: "Pour les sportifs expérimentés qui aiment repousser leurs limites et qui veulent y aller à fond. Brûlage de graisse et renforcement musculaire. Tu t’entraînes au poids de corps ou avec un petit équipement. L’entraînement se compose de courts intervalles, qui alternent entre effort et temps de pause."
activity22 = Activity.create! name: "Handball", category: "Sports collectifs", description: "Idéal pour les personnes sociables. Ce jeu de balle n’est cependant pas un jeu de contact comme le rugby ; on joue principalement avec les mains et le haut du corps. Amélioration de l’endurance et de la vitesse. Contrairement au football, c’est le haut du corps qui se voit renforcé. Tu joues dans une équipe de 7 joueurs et tu essaies de marquer le plus de buts possibles."
activity23 = Activity.create! name: "Football", category: "Sports collectifs", description: "Parfait pour les personnes sociables qui aiment aussi voyager en groupe. Pour tous les amoureux du ballon rond. Amélioration de l’endurance et de la vitesse. Renforcement des muscles des jambes. Tu joues dans une équipe de 11 joueurs contre une autre équipe et tu essaies de marquer le plus de buts possibles."
activity24 = Activity.create! name: "Rugby ", category: "Sports collectifs", description: "Parfait pour les personnes sociables qui aiment le contact. Pour ceux qui n’ont pas peur de se salir ou qui rêvent de devenir un dieu dans le stade. Amélioration de l’endurance et de la vitesse. Renforcement des muscles de tout le corps. Tu joues dans une équipe de 15 joueurs contre une autre équipe et tu essaies de marquer plus de points que l’adversaire. Il y a plusieurs façons de marquer des points : essais, transformation, but, et drop."
activity25 = Activity.create! name: "Hockey", category: "Sports collectifs", description: "Pour les personnes qui préfèrent utiliser une crosse plutôt que leurs mains ou leurs pieds. Renforcement de la musculature des jambes. Le renforcement du haut du corps ne concerne surtout qu’un côté, car la crosse se tient toujours de la même façon. Le bas du dos est aussi renforcé à force de se penser et de se relever. L’endurance s’améliore aussi. Selon la saison et le type de hockey, ce sport se pratique en salle, en patinoire ou en extérieur sur du gazon. Les règles sont légèrement différentes selon le type de terrain. Avec ton équipe, tu essaies de tirer la balle ou le palet dans le but adverse."
activity26 = Activity.create! name: "Volleyball", category: "Sports collectifs", description: "Pour les personnes qui aiment les sports collectifs mais qui n’aiment pas trop courir et qui n’ont pas peur de se retrouver à terre. Renforcement de la musculature des jambes et des fessiers, avec la posture légèrement penchée. Le volleyball se joue en équipe de 6 joueurs. Les deux équipes sont séparées par un filet au milieu du terrain. Il ne faut jamais tenir la balle, mais toujours la relancer, vers un équipier ou sur l’équipe adverse."
activity27 = Activity.create! name: "Tennis", category: "Sports de raquette ", description: "Pour les personnes compétitives. Pour ce sport, il faut aussi avoir de bonnes épaules, ainsi que des coudes, des genoux et des chevilles en bonne santé. Autrefois considéré comme un sport élitiste, ce sport s’est depuis ouvert au grand public. Amélioration de l’endurance, de la coordination, du temps de réaction et de la stabilité des genoux. Tu peux jouer seul contre une autre personne, ou avec un partenaire contre une autre équipe de deux. Chaque camp est séparé par un filet au milieu du terrain. L’objectif est de renvoyer la balle vers le camp adverse. Si ton adversaire n’arrive pas à renvoyer la balle, le point est pour toi."
activity28 = Activity.create! name: "Tennis de table ", category: "Sports de raquette ", description: "Idéal pour tous les âges. Amélioration de la coordination entre les yeux et la main. Le principe est comparable au tennis, sauf que le terrain est réduit à une table. Les raquettes et les balles sont aussi proportionnellement plus petites. Il y a moins de déplacements qu’au tennis, mais les échanges sont plus rapides."
activity29 = Activity.create! name: "Badminton ", category: "Sports de raquette ", description: "Pour toutes les personnes qui veulent se dépenser, mais « tranquillement ». Améliore le temps de réaction et active le système cardio-vasculaire. Tout comme au tennis, les deux camps sont séparés par un filet. Le filet est placé en hauteur. La balle de tennis est remplacée par un volant qui ne doit jamais toucher le sol. Si le volant touche le sol du camp adverse, le point est pour toi."
activity30 = Activity.create! name: "Athlétisme", category: "Sports individuels ", description: "Pour les sportifs à l’aise aussi bien aussi bien dans les sports d’équipe qu’individuels. La cible varie fortement en fonction de la discipline. L’exécution des mouvements étant généralement courte, l’athlétisme entraîne surtout une force maximale et explosive. Lors des compétitions, tu peux participer à plusieurs disciplines, ou bien te spécialiser. L’objectif est toujours d’avoir le meilleur score (distance de lancer, hauteur de saut, temps à 100 m)."
activity31 = Activity.create! name: "Gymnastique ", category: "Sports individuels ", description: "Les personnes qui aiment apprendre de nouveaux mouvements, à maintenir certaines postures ou simplement contrôler leur corps. Renforce l’ensemble de la musculature. Améliore la souplesse et entraîne la coordination. Avec la gymnastique, tu apprends à faire des figures et des mouvements impressionnants, de la simple galipette en passant par l’équilibre, le salto arrière et bien d’autres figures acrobatiques."
activity32 = Activity.create! name: "Yoga", category: "Sports individuels ", description: "Pour toutes les personnes qui veulent se détendre et se relaxer grâce au sport, mais qui souhaitent quand même entraîner tout le corps. Effets de détente et de relaxation. Renforcement musculaire et amélioration du contrôle et de la souplesse. Tu apprends à contrôler ta respiration, à écouter ton corps et à détendre en pleine conscience tes muscles."
activity33 = Activity.create! name: "Zumba", category: "Sports de danse", description: "Pour les personnes qui aiment les mouvements rapides et sensuels. Parfait pour s’entraîner en groupe, mais aussi danser seul. Entraîne le système cardio-vasculaire. Tu apprends à te sentir mieux dans ta peau et à te bouger au rythme des sons latino-américains. La zumba est surtout pratiquée en groupe. Comme dans un cours fitness classique, c’est l’entraîneur qui présente les mouvements et les participants doivent les reproduire."

p "#{Activity.count} created"
p "-----------------------"

p " ************** "
p " Begin bookings "
p " ************** "
p "-----------------------"




Activity.all.each do |activity|
  users = [user1, user2, user3, user4, user5]
  coaches = [coach1, coach2, coach3, coach4, coach5, coach6, coach7, coach8, coach9, coach10]
    coaches.each do |coach|
    coach_activity1 = CoachActivity.create! user: coach, activity: activity, price: rand(50..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..15)
    2.times do
      booking1 = Booking.create! user: users.sample, coach: coach_activity1.user, coach_activity: coach_activity1, sum_price: coach_activity1.price, duration: rand(1..3), status: "confirmé", participant_number: rand(1..5), date_time: "2020-06-05 12:00"
      room1 = Room.create! booking: booking1
      review1 = Review.new booking: booking1, user: booking1.user, rating: rand(1..5)
      if review1.rating == 5
        review1.content = "Wow quelle cours! Un merveilleux cours de #{review1.booking.coach_activity.user.first_name}!!! Je recommande à fond !!!!!!"
      elsif review1.rating == 4
        review1.content = "Super bieng! j'ai beaucoup aimé le cours de #{review1.booking.coach_activity.user.first_name} !"
      elsif review1.rating == 3
        review1.content = "C'était sympas dommage que #{review1.booking.coach_activity.user.first_name} n'est pas été à l'heure !"
      elsif review1.rating == 2
        review1.content = "Je suis déçu. #{review1.booking.coach_activity.user.first_name} n'a pas été agréable avec moi... J'attendais plus"
      elsif review1.rating == 1
        review1.content = "A fuir !!!! #{review1.booking.coach_activity.user.first_name} m'a dit que j'avais un énorme boulastre alors que c'est pas vrai!!! Non mais papy, mais qué pasa? En plus racontait d'autre bails sur moi. c'est un Scandale!"
      end
      review1.save!
    end
  end
  p "#{activity.name} : #{Booking.count}bookings created, #{Review.count} reviews created"
end

p "TOTAL #{Booking.count} bookings created"
p "TOTAL #{Review.count} reviews created"



