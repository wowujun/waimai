class Remove < ActiveRecord::Migration
  def change
    remove_column  :sellers, :selleradmin_id, :string
    add_column :sellers, :cla_id, :string
  end
end
