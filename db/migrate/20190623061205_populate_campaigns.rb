class PopulateCampaigns < ActiveRecord::Migration[6.0]
  CAMPAIGNS = [
    [name: "I'm sorry Jon", description: "Garfield does horrible things to Jon", dungeon_master: "Garfield", players: 4, image_url: "https://i.kym-cdn.com/entries/icons/original/000/029/052/creepy_garfield_cover.jpg"],
    [name: "I'm sorry Jon: II", description: "Garfield does horrible things to Jon", dungeon_master: "Garfield", players: 4, image_url: "https://i.redd.it/bgraschut0631.png"],
    [name: "I'm sorry Jon: III", description: "Garfield does horrible things to Jon", dungeon_master: "Garfield", players: 4, image_url: "https://i.redd.it/b1hfljinmy031.jpg"],
  ]

  def up
    CAMPAIGNS.each do |campaign|
      Campaign.create(campaign)
    end
  end

  def down
    Campaign.destroy_all
  end
end
