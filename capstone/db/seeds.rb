# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Nation.destroy_all

Nation.create!([{
   name: "United States",
   mobilephones: 109478031,
   mortalityunder5: 9,
   healthexpenditurepercapita: 4703,
   healthexpenditureppercentGDP:  13,
   population: 282162411,
   populationurban:223190467,
   birthrate: 15,
   lifeexpectancy: 77,
   GDP: 9898800000000
}])
