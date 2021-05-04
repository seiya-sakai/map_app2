class CreateShop < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :adress
      t.string :shop_image
      t.string :phone_number
      t.string :url
      t.string :comment
      t.datetime :created_at, precision: 6, null: false
      t.datetime :updated_at, precision: 6, null: false
      t.float :lng
      t.bigint :user_id
      t.float :lat
    end
  end
end
