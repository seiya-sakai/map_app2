class Shop < ApplicationRecord
    attachment   :shop_image
    has_many :posts, dependent: :destroy 
    belongs_to :user
end
