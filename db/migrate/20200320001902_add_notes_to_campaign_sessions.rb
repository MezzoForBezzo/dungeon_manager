class AddNotesToCampaignSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :campaign_sessions, :notes, :text
  end
end
