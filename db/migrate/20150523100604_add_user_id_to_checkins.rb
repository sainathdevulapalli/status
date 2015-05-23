class AddUserIdToCheckins < ActiveRecord::Migration
  def change
  	add_column :checkins, :user_id, :integer
  	add_index :checkins, :user_id
  	remove_column :checkins, :name
  end
end
