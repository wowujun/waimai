class CreateSelleradmins < ActiveRecord::Migration
  def change
    create_table :selleradmins do |t|
      t.string :name
      t.string :loginname
      t.string :password_digest
      t.integer :status

      t.timestamps null: false
    end
  end
end
