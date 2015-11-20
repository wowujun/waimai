class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :renderto
      t.string :image
      t.integer :status
      t.timestamp :startdate
      t.timestamp :enddate
      t.timestamp :starttime
      t.timestamp :endtime

      t.timestamps null: false
    end
  end
end
