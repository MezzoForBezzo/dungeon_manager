class CreateCampaignSessions < ActiveRecord::Migration[6.0]
  def up
    create_table :campaign_sessions do |t|
      t.string      :name
      t.text        :description

      t.timestamps
    end
  end

  def down
    drop_table :campaign_sessions
  end
end
