class CreateSessionAllies < ActiveRecord::Migration[6.0]
  def up
    create_table :session_allies do |t|
      t.string :name
      t.integer :hit_points
      t.integer :initiative

      t.timestamps
    end
  end

  def down
    drop_table :session_allies
  end
end
