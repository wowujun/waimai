class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :unit_id
      t.string :productcla_id
      t.string :seller_id
      t.string :name
      t.string :image
      t.string :costprice
      t.string :currentprice
      t.integer :num
      t.integer :status

      t.timestamps null: false
    end
  end
end
