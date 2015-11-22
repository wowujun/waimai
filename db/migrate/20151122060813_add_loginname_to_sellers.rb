class AddLoginnameToSellers < ActiveRecord::Migration
  def change
    add_column :sellers, :loginname, :string
    add_column :sellers, :password_digest, :string
  end
end
