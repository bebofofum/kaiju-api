# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

titan_1 = Titan.create(nickname: "Mothra", tclass: "Aerial", size: "200 meters", image_src: "http:some_web_path", details: "Insectoid in appearance having a massive wingspan capable of generating hurricane-like winds. Seems mostly benign in nature unless provoked." )
titan_2 = Titan.create(nickname: "Knifehead", tclass: "Aquatic", size: "150 meters", image_src: "http:some_web_path", details: "Mostly water-based kaiju with angular blade-like head. Highly aggressive." )
titan_3 = Titan.create(nickname: "Kong", tclass: "Mammalian", size: "200 meters", image_src: "http:some_web_path", details: "Bi-pedal bearing a strong resemblance to an enormous gorilla. Territorial. Don't approach with planes or helicopters." )

