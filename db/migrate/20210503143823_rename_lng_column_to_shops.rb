class RenameLngColumnToShops < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :lng, :longitude
  end
end
