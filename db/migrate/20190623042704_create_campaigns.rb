class CreateCampaigns < ActiveRecord::Migration[6.0]
  def up
    create_table :campaigns do |t|
      t.string      :name
      t.text        :description
      t.string      :dungeon_master
      t.integer     :players
      t.string      :image_url, optional: true

      t.timestamps
    end
  end

  def down
    drop_table :campaigns
  end
end
