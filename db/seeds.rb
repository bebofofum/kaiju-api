# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

titan_1 = Titan.create(nickname: "Mothra", tclass: "Aerial", size: "200 meters", image_src: "https://static.wikia.nocookie.net/godzilla/images/f/f7/Godzilla.jp_-_28_-_FinalMosuImago_Mothra_2004.jpg/revision/latest/scale-to-width-down/340?cb=20190102223916", details: "Insectoid in appearance having a massive wingspan capable of generating hurricane-like winds. Seems mostly benign in nature unless provoked." )
titan_2 = Titan.create(nickname: "Knifehead", tclass: "Aquatic", size: "150 meters", image_src: "https://i.pinimg.com/originals/be/d7/9c/bed79ceb89f3bd468df7295e3e3b82e4.jpg", details: "Mostly water-based kaiju with angular blade-like head. Highly aggressive." )
titan_3 = Titan.create(nickname: "Kong", tclass: "Mammalian", size: "200 meters", image_src: "https://static.wikia.nocookie.net/marvelcrossroads/images/3/3e/King_Kong_%28Earth-11354%29.jpg/revision/latest/scale-to-width-down/350?cb=20181211025517", details: "Bi-pedal bearing a strong resemblance to an enormous gorilla. Territorial. Don't approach with planes or helicopters." )

titan_sighting1 = Sighting.create(location: "South America")
titan_sighting2 = Sighting.create(location: "North America")
titan_sighting3 = Sighting.create(location: "Artic")
