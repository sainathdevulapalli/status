class AddTitleToCheckins < ActiveRecord::Migration
  def change
    add_column :checkins, :title, :string
  end
end
