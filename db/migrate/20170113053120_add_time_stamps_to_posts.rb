class AddTimeStampsToPosts < ActiveRecord::Migration
  def change
    add_timestamps(:posts)
  end
end
