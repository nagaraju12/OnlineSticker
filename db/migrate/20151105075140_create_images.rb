class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :sticker_id
      t.integer :banner_id
      t.integer :category_id
      t.integer :imagable_id
      t.string :imagable_type
      t.attachment :image
      t.timestamps null: false
    end
  end
end
