class AddDescriptionToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :description, :text
    add_column :events, :creator_id, :integer
  end
end
