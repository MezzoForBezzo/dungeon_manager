class AddImgToSessionAllies < ActiveRecord::Migration[6.0]
  def change
    add_column :session_allies, :image_url, :string
  end
end
