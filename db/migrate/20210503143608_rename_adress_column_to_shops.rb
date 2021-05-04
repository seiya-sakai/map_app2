class RenameAdressColumnToShops < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :adress, :address
  end
end
