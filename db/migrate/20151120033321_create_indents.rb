class CreateIndents < ActiveRecord::Migration
  def change
    create_table :indents do |t|
      t.string :customer_id
      t.string :diliveryman_id
      t.string :number
      t.integer :status
      t.integer :orderstatus
      t.string :sum
      t.timestamp :bltime
      t.timestamp :finishtime

      t.timestamps null: false
    end
  end
end
