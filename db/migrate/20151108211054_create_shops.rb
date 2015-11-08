class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :url
      t.integer :shop_id

      t.timestamps
    end
  end
end
