class RenameShopImageColumnToShops < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :shop_image, :shop_image_id
  end
end
