class CreateCordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :cordinates do |t|
      t.boolean :short_sleeve
      t.boolean :long_sleeve
      t.boolean :thick_long_sleeve
      t.boolean :light_coat
      t.boolean :coat
      t.boolean :movable
      t.boolean :favorite
      t.boolean :dirty
      t.boolean :formal
      t.integer :user_id

      t.timestamps
    end
  end
end
