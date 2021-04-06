class AddIdToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :user_id, :bigint
    add_column :posts, :shop_id, :bigint
  end
end
