class AddDetailsToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :user_id, :bigint
  end
end
