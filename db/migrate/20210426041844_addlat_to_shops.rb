class AddlatToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :lat, :float
  end
end
