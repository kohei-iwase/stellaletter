class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :image # 画像用

  has_many :active_relationships,class_name:  "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :following, through: :active_relationships

  has_many :followers, through: :passive_relationships, source: :follower

  def following?(other_user)
  	following.include?(other_user)
  end
end
