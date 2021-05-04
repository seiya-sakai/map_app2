class Shop < ApplicationRecord
    has_many :posts, dependent: :destroy 
    belongs_to :user, optional: true
    attachment :shop_image
    geocoded_by :address
    after_validation :geocode
end
