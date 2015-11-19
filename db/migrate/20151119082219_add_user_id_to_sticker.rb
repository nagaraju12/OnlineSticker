class AddUserIdToSticker < ActiveRecord::Migration
  def change
  	add_column :stickers, :user_id, :integer
  end
end
