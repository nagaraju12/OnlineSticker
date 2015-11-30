class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
 t.references :stickers,  foreign_key: true
      t.belongs_to :cart,  foreign_key: true

    
      t.timestamps null: false
    end
  end
end
