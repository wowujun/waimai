class CreateClas < ActiveRecord::Migration
  def change
    create_table :clas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
