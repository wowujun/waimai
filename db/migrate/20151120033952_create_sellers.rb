class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :selleradmin_id
      t.string :name
      t.string :summary
      t.string :tel
      t.string :address
      t.string :logo
      t.string :hint
      t.string :location
      t.integer :status

      t.timestamps null: false
    end
  end
end
