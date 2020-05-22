class UserSkill < ApplicationRecord
  attachment :image # 画像用

	#ユーザーの性癖
  has_many :user_status,dependent: :destroy
  has_many :users,through: :user_status

  # 地雷表示

  validates :name, presence: true
end
