class AddMemorandumToClothes < ActiveRecord::Migration[5.2]
  def change
    add_column :clothes, :memorandum, :text
  end
end
