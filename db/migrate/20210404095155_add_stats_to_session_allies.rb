class AddStatsToSessionAllies < ActiveRecord::Migration[6.0]
  def change
    add_column :session_allies, :stats, :text
  end
end
