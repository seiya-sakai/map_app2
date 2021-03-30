class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :adress
      t.string :shop_image
      t.string :phone_number
      t.string :url
      t.string :menu

      t.timestamps
    end
  end
end
