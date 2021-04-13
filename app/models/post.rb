class Post < ApplicationRecord
    belongs_to :user
    belongs_to :shop
    validates :title, presence: true
    validates :body, presence: true
end
