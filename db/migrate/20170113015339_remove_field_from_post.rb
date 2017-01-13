class RemoveFieldFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :belongs_to
  end
end
