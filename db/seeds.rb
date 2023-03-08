# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CAMPAIGNS = [
  [name: "I'm sorry Jon", description: 'Garfield does horrible things to Jon', dungeon_master: 'Garfield', players: 4, image_url: 'https://i.kym-cdn.com/entries/icons/original/000/029/052/creepy_garfield_cover.jpg'],
  [name: "I'm sorry Jon: II", description: 'Garfield does horrible things to Jon', dungeon_master: 'Garfield', players: 4, image_url: 'https://i.redd.it/bgraschut0631.png'],
  [name: "I'm sorry Jon: III", description: 'Garfield does horrible things to Jon', dungeon_master: 'Garfield', players: 4, image_url: 'https://i.redd.it/b1hfljinmy031.jpg']
]

CAMPAIGNS.each do |campaign|
  Campaign.create(campaign)
end
