class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :weichat_id
      t.string :tel
      t.string :address
      t.string :location
      t.integer :balance
      t.integer :integral

      t.timestamps null: false
    end
  end
end
