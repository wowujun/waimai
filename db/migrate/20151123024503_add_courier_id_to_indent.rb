class AddCourierIdToIndent < ActiveRecord::Migration
  def change
    remove_column  :indents, :diliveryman_id, :string
  end
end
