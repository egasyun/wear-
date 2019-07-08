class CreateClothes < ActiveRecord::Migration[5.2]
  def change
    create_table :clothes do |t|
      t.string :image
      t.string :name
      t.integer :price
      t.date :buy_date
      t.string :genre
      t.integer :user_id
  

      t.timestamps
    end
  end
end
