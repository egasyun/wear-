class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.references :clothe, foreign_key: true
      t.references :cordinate, foreign_key: true

      t.timestamps
    end
  end
end
