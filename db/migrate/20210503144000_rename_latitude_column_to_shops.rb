class RenameLatitudeColumnToShops < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :lat, :latitude
  end
end
