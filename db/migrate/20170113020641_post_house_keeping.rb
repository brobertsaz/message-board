class PostHouseKeeping < ActiveRecord::Migration
  def change
    rename_column :posts, :author_id, :user_id
    remove_column :posts, :author
  end
end
