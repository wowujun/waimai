class CreateIndentDetails < ActiveRecord::Migration
  def change
    create_table :indent_details do |t|
      t.string :indent_id
      t.string :product_id
      t.string :name
      t.integer :num
      t.string :price

      t.timestamps null: false
    end
  end
end
