class CreateProductclasProducts < ActiveRecord::Migration
  def change
    create_table :productclas_products do |t|
      t.integer :productcla_id
      t.integer :product_id

      t.timestamps null: false
    end
  end
end
