class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :body
      t.integer :user_id
      t.string :belongs_to
    end
  end
end