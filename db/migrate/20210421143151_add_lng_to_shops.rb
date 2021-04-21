class AddLngToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :lng, :float
  end
end
