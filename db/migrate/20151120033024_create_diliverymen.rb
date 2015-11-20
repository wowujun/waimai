class CreateDiliverymen < ActiveRecord::Migration
  def change
    create_table :diliverymen do |t|
      t.string :name
      t.string :weichat_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
