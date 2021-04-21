class RemoveLonFromShops < ActiveRecord::Migration[6.0]
  def change
    remove_column :shops, :lon, :float
  end
end
