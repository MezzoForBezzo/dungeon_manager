class UpdateSessionAllies < ActiveRecord::Migration[6.0]
  def change
    add_column :session_allies, :backstory, :text
    add_column :session_allies, :appearance, :text
    add_column :session_allies, :armour, :integer
    add_column :session_allies, :goals, :text
  end
end
