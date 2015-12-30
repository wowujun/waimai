class CreateProductProductclaRefs < ActiveRecord::Migration
  def change
    create_table :product_productcla_refs do |t|
      t.integer :productcla_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
