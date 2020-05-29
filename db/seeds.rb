# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
CoachActivity.destroy_all
Activity.destroy_all
User.destroy_all


photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590157221/yg4ud6gwj6cbtmxvt9ntg9pue9fj.png")
photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")


user1 = User.create! password: "123456", email: "loic.redon@gmail.com", first_name: "Loïc", last_name: "Redon", phone: "0652770554", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France"
user1.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/png')
photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590157221/yg4ud6gwj6cbtmxvt9ntg9pue9fj.png")

user2 = User.create! password: "123456", email: "nabster@gmail.com", first_name: "Nabil", last_name: "Labrazouf", phone: "0652770555", address: "93 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France"
user2.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/png')
photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590157221/yg4ud6gwj6cbtmxvt9ntg9pue9fj.png")

user3 = User.create! password: "123456", email: "tomtom@gmail.com", first_name: "Tom", last_name: "Oeuf", phone: "0652770560", address: "70 Rue Rodier, Paris 9e Arrondissement, Île-de-France, France"
user3.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/png')
photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590157221/yg4ud6gwj6cbtmxvt9ntg9pue9fj.png")

user4 = User.create! password: "123456", email: "monaco@gmail.com", first_name: "Zaken", last_name: "Marezzi", phone: "0652770599", address: "60 Rue Rodier, Paris 9e Arrondissement, Île-de-France, France"
user4.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/png')
photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590157221/yg4ud6gwj6cbtmxvt9ntg9pue9fj.png")

user5 = User.create! password: "123456", email: "corniaud@gmail.com", first_name: "Alex", last_name: "Corniaud", phone: "0652776069", address: "91 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France"
user5.photo.attach(io: photo_user, filename: 'user_picture', content_type: 'image/png')
photo_user = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590157221/yg4ud6gwj6cbtmxvt9ntg9pue9fj.png")

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach1 = User.create! password: "123456", email: "larque@gmail.com", coach: true, first_name: "Jean-Michel", last_name: "Larqué", phone: "0652770202", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 48.8779962, longitude: 2.2505532, licence: "BPJEPS", location: 10
coach1.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach2 = User.create! password: "123456", email: "courbis@gmail.com", coach: true, first_name: "Rolland", last_name: "Courbis", phone: "0652770245", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 48.9779962, longitude: 2.3505532, licence: "La Street", location: 5
coach2.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach3 = User.create! password: "123456", email: "garcia@gmail.com", coach: true, first_name: "Roudy", last_name: "Garcia", phone: "0652707070", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.0779962, longitude: 2.4505532, licence: "BPJEPS", location: 8
coach3.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach4 = User.create! password: "123456", email: "genesio@gmail.com", coach: true, first_name: "Bruno", last_name: "Genesio", phone: "0652708080", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.1779962, longitude: 2.5505532, licence: "BPJEPS", location: 4
coach4.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach5 = User.create! password: "123456", email: "amraoui@gmail.com", coach: true, first_name: "Myriam", last_name: "Amraoui", phone: "0652707979", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.2779962, longitude: 2.6505532, licence: "BPJEPS", location: 6
coach5.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach6 = User.create! password: "123456", email: "laurent@gmail.com", coach: true, first_name: "Laurent", last_name: "Voulzy", phone: "0752770202", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.3779962, longitude: 2.7505532, licence: "BPJEPS", location: 7
coach6.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach7 = User.create! password: "123456", email: "patrick@gmail.com", coach: true, first_name: "Patrick", last_name: "Fiori", phone: "0752770245", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.3779962, longitude: 2.8505532, licence: "La Street", location: 9
coach7.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach8 = User.create! password: "123456", email: "moha@gmail.com", coach: true, first_name: "Moha", last_name: "Le Serpent", phone: "0752707070", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.4779962, longitude: 2.9505532, licence: "BPJEPS", location: 12
coach8.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach9 = User.create! password: "123456", email: "hugo@gmail.com", coach: true, first_name: "Hugo", last_name: "TSR", phone: "0752708080", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.5779962, longitude: 2.3005532, licence: "BPJEPS", location: 10
coach9.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

photo_coach = URI.open("https://res.cloudinary.com/dw22pxuaw/image/upload/v1590659169/guv4oxvs285ihpwqhb8tt54w48nv.jpg")
coach10 = User.create! password: "123456", email: "cloud@gmail.com", coach: true, first_name: "Cloud", last_name: "Strife", phone: "0752707979", address: "90 Rue des Moines, Paris 17e Arrondissement, Île-de-France, France", latitude: 49.6779962, longitude: 2.3105532, licence: "BPJEPS", location: 10
coach10.photo.attach(io: photo_coach, filename: 'coach_picture', content_type: 'image/jpg')

Activity.create! name: "Boxe thaïlandaise", category: "Sport de combat", description: "La boxe thaïlandaise abrégée boxe thaï ou encore muay-thaï est un art marial pieds points. C’est probablement la boxe la plus complète puisqu’on utilise toutes les parties du corps pour frapper son opposant. La boxe anglaise utilise les poings, la boxe française utilise les pieds et les poings, et la boxe thaï ajoute les coudes et les genoux."
Activity.create! name: "Danse de salon", category: "Sports de danse", description: "Idéal pour tous les âges. Parfait pour faire des rencontres, ou bien comme activité de couple. Offre un sentiment libérateur. Réduit le stress. Effets positifs sur le système cardio-vasculaire. Avec ton partenaire, tu apprends différents pas de danse et mouvements de différentes danses. Cela nécessite d’être concentré et de s’adapter à son partenaire."
Activity.create! name: "Breakdance", category: "Sports de danse", description: "Pour les sportifs qui savent déjà bien bouger ou qui souhaitent apprendre. Renforce l’ensemble du corps. Améliore aussi la souplesse et la coordination. Le breakdance est une danse urbaine. Tu y apprends des mouvements et des figures impressionnantes. Les mouvements s’exécutent principalement au sol. Les différentes poses s’enchaînent rapidement. Avoir de l’expérience en gymnastique est un plus."
Activity.create! name: "Hip-Hop ", category: "Sports de danse", description: "Pour les débutants comme pour les danseurs expérimentés. Pour les personnes qui veulent aussi bien danser seul ou en groupe. Entraîne la coordination, la souplesse et l’endurance. Le hip-hop est une danse urbaine comme le breakdance. Tu apprends à te bouger seul ou en groupe sur des sons hip-hop."
Activity.create! name: "Judo", category: "Sport de combat", description: "L’art martial le plus pratiqué au monde est fait pour tous. Les prises de judo sont particulièrement intéressantes pour apprendre à utiliser son poids de corps et celui de l’adversaire. Améliore la force, l’endurance et la souplesse. Renforce la confiance en soi grâce aux règles de discipline, self-control et de respect. Tu apprends à mettre ton adversaire à terre en utilisant des prises de judo. Donner des coups ou se marcher dessus est strictement interdit. En dehors des tournois, il y a aussi de nombreux stages et examens permettant aux judokas de passer au niveau supérieur et d’apprendre de nouvelles prises et de nouvelles techniques de chute."
Activity.create! name: "Boxe", category: "Sport de combat", description: "Pour toutes les personnes qui souhaitent se défouler et faire le plein d’adrénaline. Pour les durs à cuire, mais aussi pour ceux qui veulent apprendre à surmonter leurs peurs. La boxe entraîne surtout l’endurance musculaire et la vitesse. Ce sport renforce aussi le mental, et la confiance en soi, en apprenant à encaisser les coups. Avec la boxe, tu apprends différentes techniques de coup de poing pour vaincre ton adversaire, soit en marquant des points, soit en le mettant K.O. Même si tu n’utilises que les poings, un match de boxe est très épuisant et requiert beaucoup d’endurance musculaire."
Activity.create! name: "Kick-Boxing ", category: "Sport de combat", description: "Pour toutes les personnes qui souhaitent boxer avec les poings mais aussi avec les pieds. Comme avec la boxe, c’est surtout le mental et l’endurance musculaire que tu entraînes. Avec ce sport, la mobilité joue aussi un rôle important. Avec le kick-boxing, en plus des coups de poing, tu peux aussi donner des coups de pied ou même des coups de tibias pour vaincre ton adversaire."
Activity.create! name: "Arts martiaux mixtes (MMA)", category: "Sport de combat", description: "Pour toutes les personnes qui veulent avoir un mélange de plusieurs sports de combat. Renforce l’endurance, la vitesse, la mobilité, la force, mais aussi la coordination et le mental. Avec le MMA, tu apprends différentes techniques de combat venant du monde entier. Tu apprends à donner des coups de pied ou de poing, mais aussi des prises de judo ou de lutte, encore des techniques de ju-jitsu (projection, clé articulaire ou étranglement) pour vaincre l’adversaire ou le forcer à abandonner."
Activity.create! name: "Krav-Maga ", category: "Sport de combat", description: "Pour les personnes qui n’ont pas envie de faire de la compétition, mais qui veulent quand même apprendre à se défendre rapidement et efficacement. Renforce la confiance en soi. Tu apprends à te défendre dans différentes situations. Ce n’est pas la force qui compte, mais la vitesse de réaction pour se créer des ouvertures et échapper à l’adversaire."
Activity.create! name: "Wakeboard & ski nautique", category: "Sports de glisse ", description: "Pour les personnes qui aiment l’eau et la vitesse. Si tu préfères être libre dans la pratique de ton sport, les sports nautiques sont faits pour toi. Renforcement de tout le corps. Permet de mieux se tenir et améliore la stabilité des genoux. Que ce soit au ski nautique et au wakeboard, tu te tiens sur des skis ou sur une planche. Tu tiens une corde attachée à un bateau ou un téléski nautique qui te tracte sur l’eau. Tu dois balancer ton poids pour déterminer la direction."
Activity.create! name: "Ski & Snowboard ", category: "Sports d’hiver ", description: "Pour les amoureux de la montagne, les personnes qui n’ont pas froid aux yeux et qui souhaitent s’entraîner à l’extérieur, même en hiver. Comme avec le ski nautique et le wakeboard, tu apprends à mieux te tenir et à rester en équilibre. Renforce aussi la stabilité des genoux. Tu descends une piste pentue avec des skis ou une planche de snowboard. Tu dois toujours adapter ta direction, freiner, balancer ton poids et rester concentré pour ne pas te retrouver le nez dans la poudreuse."
Activity.create! name: "Calisthenics", category: "Sports urbains ", description: "Parfait pour les habitants des grandes villes et les personnes qui aiment les acrobaties à la barre fixe ou aux barres parallèles. Pour tous ceux qui veulent développer leur force et le contrôle de leur corps. Améliore la force, la mobilité, le contrôle du corps surtout au niveau du haut du corps. Tu t’entraînes avec différents exercices statiques ou dynamiques sur différents types de barres (fixes, parallèles, verticales, horizontales). L’entraînement se fait plutôt dans un parc fitness."
Activity.create! name: "Parkour ", category: "Sports urbains ", description: "Pour les personnes citadines hyperactives, qui aiment utiliser l’espace urbain comme terrain de jeu. Pour les personnes qui aiment faire de l’escalade, de l’acrobatie et autres prouesses physiques. Le parkour permet d’avoir un meilleur contrôle de son corps. Renforce énormément la coordination et la détente pour les sauts. Tu fais du sport en pleine ville ou dans des parcs spécialement conçus pour le parkour. Tu dois passer les différents obstacles en courant, en escaladant, en sautant. Avec le temps et l’expérience, tu incorpores de plus en plus de figures acrobatiques."
Activity.create! name: "Skateboard", category: "Sports urbains ", description: "Pour les citadins qui préfèrent se déplacer sur une planche mais qui n’ont ni mer, ni montagne à côté. Améliore la coordination. En skate, tu utilises une planche à 4 roulettes pour te déplacer. Ce sport se pratique généralement dans des skates parcs où tu t’entraînes à faire différentes figures en skate."
Activity.create! name: "Courir", category: "Sports d’endurance ", description: "Les personnes souhaitant perdre du poids ou bien améliorer leur cardio. Améliore le système cardio-vasculaire et l’endurance. Comme son nom l’indique, tu cours. En règle générale, tu essaies d’augmenter progressivement la distance, le temps ou la vitesse de course. De cette façon, tu repousses toujours tes limites."
Activity.create! name: "Natation  ", category: "Sports d’endurance ", description: "Les personnes qui aiment l’eau et celles qui ont des problèmes d’articulation. Perte de poids. Amélioration de l’endurance. Renforcement musculaire de tout le corps. Amélioration de la mobilité des épaules. Tu nages en utilisant différentes techniques. La résistance de l’eau rend les déplacements difficiles, ce qui déclenche l’effort. Les mouvements dans l’eau n’ont aucun impact, c’est pourquoi la natation est idéale pour épargner ses articulations."
Activity.create! name: "Cyclisme", category: "Sports d’endurance ", description: "Les amoureux de la nature. Les personnes avec des problèmes d’articulation. Amélioration du système cardio-vasculaire et de l’endurance. Renforcement musculaire au niveau des jambes. À l’instar de la course à pied, avec le vélo, tu essaies d’augmenter progressivement la distance, le temps et la vitesse de course."
Activity.create! name: "Functional Training ", category: "Sports de force", description: "Pour les personnes souhaitant améliorer et faciliter leurs mouvements quotidiens. Entraînement de la force, de l’endurance, de la mobilité, de la vitesse et de la coordination. Tu fais des exercices qui reproduisent des mouvements fonctionnels du quotidien. Renforce surtout le buste et la ceinture abdominale."
Activity.create! name: "BodyBuilding", category: "Sports de force", description: "Pour les perfectionnistes, et les personnes super disciplinées et qui se soucient du moindre détail. Renforcement et développement de tous les muscles, tout en réduisant la masse grasse. Tu t’entraînes avec des poids et des machines. Tu pratiques à la fois des exercices de base qui font travailler plusieurs muscles, et des exercices d’isolation, pour travailler chaque muscle indépendamment."
Activity.create! name: "Fitness ", category: "Sports de force", description: "Les personnes préférant se laisser guider, s’entraîner en groupe ou qui n’ont pas beaucoup d’expérience. Les effets dépendent du cours. Certains cours se focalisent sur le renforcement musculaire, d’autres cours sur le cardio ou encore le brûlage de graisse, la mobilité ou la coordination. La plupart des cours sont menés par un coach. L’entraîneur se tient face au groupe et présente les exercices. Pendant que le groupe s’entraîne, il vérifie la posture et l’exécution de chacun pour corriger et motiver les participants."
Activity.create! name: "HIIT", category: "Sports de force", description: "Pour les sportifs expérimentés qui aiment repousser leurs limites et qui veulent y aller à fond. Brûlage de graisse et renforcement musculaire. Tu t’entraînes au poids de corps ou avec un petit équipement. L’entraînement se compose de courts intervalles, qui alternent entre effort et temps de pause."
Activity.create! name: "Handball", category: "Sports collectifs", description: "Idéal pour les personnes sociables. Ce jeu de balle n’est cependant pas un jeu de contact comme le rugby ; on joue principalement avec les mains et le haut du corps. Amélioration de l’endurance et de la vitesse. Contrairement au football, c’est le haut du corps qui se voit renforcé. Tu joues dans une équipe de 7 joueurs et tu essaies de marquer le plus de buts possibles."
Activity.create! name: "Football", category: "Sports collectifs", description: "Parfait pour les personnes sociables qui aiment aussi voyager en groupe. Pour tous les amoureux du ballon rond. Amélioration de l’endurance et de la vitesse. Renforcement des muscles des jambes. Tu joues dans une équipe de 11 joueurs contre une autre équipe et tu essaies de marquer le plus de buts possibles."
Activity.create! name: "Rugby ", category: "Sports collectifs", description: "Parfait pour les personnes sociables qui aiment le contact. Pour ceux qui n’ont pas peur de se salir ou qui rêvent de devenir un dieu dans le stade. Amélioration de l’endurance et de la vitesse. Renforcement des muscles de tout le corps. Tu joues dans une équipe de 15 joueurs contre une autre équipe et tu essaies de marquer plus de points que l’adversaire. Il y a plusieurs façons de marquer des points : essais, transformation, but, et drop."
Activity.create! name: "Basketball", category: "Sports collectifs", description: "Pour les personnes qui aiment jouer en équipe et qui aiment viser. Si tu aimes lancer un ballon pour qu’il atterrisse à un endroit particulier, alors le basket est fait pour toi. Amélioration de l’endurance et de la vitesse, mais aussi du temps de réaction et de la coordination. Deux équipes de 5 joueurs s’opposent sur le terrain. Les joueurs contrôlent le ballon avec les mains : l’objectif est de lancer le ballon dans le panier adverse."
Activity.create! name: "Hockey", category: "Sports collectifs", description: "Pour les personnes qui préfèrent utiliser une crosse plutôt que leurs mains ou leurs pieds. Renforcement de la musculature des jambes. Le renforcement du haut du corps ne concerne surtout qu’un côté, car la crosse se tient toujours de la même façon. Le bas du dos est aussi renforcé à force de se penser et de se relever. L’endurance s’améliore aussi. Selon la saison et le type de hockey, ce sport se pratique en salle, en patinoire ou en extérieur sur du gazon. Les règles sont légèrement différentes selon le type de terrain. Avec ton équipe, tu essaies de tirer la balle ou le palet dans le but adverse."
Activity.create! name: "Volleyball", category: "Sports collectifs", description: "Pour les personnes qui aiment les sports collectifs mais qui n’aiment pas trop courir et qui n’ont pas peur de se retrouver à terre. Renforcement de la musculature des jambes et des fessiers, avec la posture légèrement penchée. Le volleyball se joue en équipe de 6 joueurs. Les deux équipes sont séparées par un filet au milieu du terrain. Il ne faut jamais tenir la balle, mais toujours la relancer, vers un équipier ou sur l’équipe adverse."
Activity.create! name: "Tennis", category: "Sports de raquette ", description: "Pour les personnes compétitives. Pour ce sport, il faut aussi avoir de bonnes épaules, ainsi que des coudes, des genoux et des chevilles en bonne santé. Autrefois considéré comme un sport élitiste, ce sport s’est depuis ouvert au grand public. Amélioration de l’endurance, de la coordination, du temps de réaction et de la stabilité des genoux. Tu peux jouer seul contre une autre personne, ou avec un partenaire contre une autre équipe de deux. Chaque camp est séparé par un filet au milieu du terrain. L’objectif est de renvoyer la balle vers le camp adverse. Si ton adversaire n’arrive pas à renvoyer la balle, le point est pour toi."
Activity.create! name: "Tennis de table ", category: "Sports de raquette ", description: "Idéal pour tous les âges. Amélioration de la coordination entre les yeux et la main. Le principe est comparable au tennis, sauf que le terrain est réduit à une table. Les raquettes et les balles sont aussi proportionnellement plus petites. Il y a moins de déplacements qu’au tennis, mais les échanges sont plus rapides."
Activity.create! name: "Badminton ", category: "Sports de raquette ", description: "Pour toutes les personnes qui veulent se dépenser, mais « tranquillement ». Améliore le temps de réaction et active le système cardio-vasculaire. Tout comme au tennis, les deux camps sont séparés par un filet. Le filet est placé en hauteur. La balle de tennis est remplacée par un volant qui ne doit jamais toucher le sol. Si le volant touche le sol du camp adverse, le point est pour toi."
Activity.create! name: "Athlétisme", category: "Sports individuels ", description: "Pour les sportifs à l’aise aussi bien aussi bien dans les sports d’équipe qu’individuels. La cible varie fortement en fonction de la discipline. L’exécution des mouvements étant généralement courte, l’athlétisme entraîne surtout une force maximale et explosive. Lors des compétitions, tu peux participer à plusieurs disciplines, ou bien te spécialiser. L’objectif est toujours d’avoir le meilleur score (distance de lancer, hauteur de saut, temps à 100 m)."
Activity.create! name: "Gymnastique ", category: "Sports individuels ", description: "Les personnes qui aiment apprendre de nouveaux mouvements, à maintenir certaines postures ou simplement contrôler leur corps. Renforce l’ensemble de la musculature. Améliore la souplesse et entraîne la coordination. Avec la gymnastique, tu apprends à faire des figures et des mouvements impressionnants, de la simple galipette en passant par l’équilibre, le salto arrière et bien d’autres figures acrobatiques."
Activity.create! name: "Yoga", category: "Sports individuels ", description: "Pour toutes les personnes qui veulent se détendre et se relaxer grâce au sport, mais qui souhaitent quand même entraîner tout le corps. Effets de détente et de relaxation. Renforcement musculaire et amélioration du contrôle et de la souplesse. Tu apprends à contrôler ta respiration, à écouter ton corps et à détendre en pleine conscience tes muscles."
Activity.create! name: "Zumba", category: "Sports de danse", description: "Pour les personnes qui aiment les mouvements rapides et sensuels. Parfait pour s’entraîner en groupe, mais aussi danser seul. Entraîne le système cardio-vasculaire. Tu apprends à te sentir mieux dans ta peau et à te bouger au rythme des sons latino-américains. La zumba est surtout pratiquée en groupe. Comme dans un cours fitness classique, c’est l’entraîneur qui présente les mouvements et les participants doivent les reproduire."

CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
CoachActivity.create! user: User.coach.sample, activity: Activity.all.sample, price: rand(30..100), start_date: "2020-05-25", end_date: "2020-12-30", capacity: rand(1..10)
