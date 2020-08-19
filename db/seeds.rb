# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: 'test@test.fr', password: '123456', moods: ["Incompris.e"])

puts "Creating 13 quests"

quests = Quest.create!([
  {name: "Savoir dire non", description: "...", moods:["Jaloux.se", "Incompris.e", "Amoureux.se", "Fort.e", "Trahi.e", "Je ne sais pas"]},
  {name: "Garder mon calme", description: "...", moods:["Stressé.e", "En colère", "Amoureux.se", "Honteux.se"]},
  {name: "Avoir confiance en moi", description: "...", moods:["Jaloux.se", "Stressé.e", "Seul.e", "Amoureux.se", "Honteux.se"]},
  {name: "Pouvoir dire 'je t'aime'", description: "...", moods:["Optimiste", "Amoureux.se", "Fort.e", "Honteux.se"]},
  {name: "Aller vers les autres", description: "...", moods:["Incompris.e", "En colère", "Seul.e", "Optimiste", "Amoureux.se", "Honteux.se"]},
  {name: "Pouvoir faire confiance", description: "...", moods:["Jaloux.se", "En colère", "Seul.e", "Amoureux.se", "Fort.e"]},
  {name: "Me faire respecter", description: "...", moods:["Incompris.e", "Seul.e", "Amoureux.se", "Honteux.se", "Trahi.e"]},
  {name: "Prendre de la distance", description: "...", moods:["Stressé.e", "Jaloux.se", "En colère", "Optimiste", "Amoureux.se", "Fort.e", "Honteux.se", "Trahi.e", "Sûr.e de moi"]},
  {name: "Lâcher prise", description: "...", moods:["Stressé.e", "Incompris.e", "En colère", "Amoureux.se", "Fort.e", "Honteux.se", "Trahi.e", "Je ne sais pas"]},
  {name: "Partager mes émotions", description: "...", moods:["Jaloux.se", "Incompris.e", "En colère", "Seul.e", "Optimiste", "Amoureux.se", "Honteux.se", "Trahi.e", "Sûr.e de moi", "Je ne sais pas"]},
  {name: "Être fier.e de moi", description: "...", moods:["Stressé.e", "Incompris.e", "Seul.e", "Amoureux.se", "Fort.e"]},
  {name: "Communiquer ma bonne humeur", description: "...", moods:["Optimiste", "Amoureux.se", "Sûr.e de moi", "Fort.e"]},
  {name: "Gérer les conflits", description: "...", moods:["Jaloux.se", "Incompris.e", "En colère", "Amoureux.se", "Honteux.se", "Trahi.e", "Sûr.e de moi"]}
])

puts "done"
