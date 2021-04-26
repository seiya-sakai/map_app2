class RenameMenuColumnToShops < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :menu, :comment
  end
end
