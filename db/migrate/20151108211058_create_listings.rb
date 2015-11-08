class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :item_name
      t.string :image
      t.string :url
      t.references :shop, index: true

      t.timestamps
    end
  end
end
