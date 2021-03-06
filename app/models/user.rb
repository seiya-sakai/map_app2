class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment   :profile_image  
  has_many :shops
  has_many :posts, dependent: :destroy  
  validates :username, presence: true
  validates :email, uniqueness: true
  validates :username, uniqueness: true
  
end
