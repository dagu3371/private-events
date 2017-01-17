class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :location
      t.string :date
      #t.references :creator, foreign_key: true

      t.timestamps
    end
  end
end
