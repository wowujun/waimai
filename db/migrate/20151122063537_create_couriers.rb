class CreateCouriers < ActiveRecord::Migration
  def change
    create_table :couriers do |t|
      t.string :name
      t.string :weichat_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
