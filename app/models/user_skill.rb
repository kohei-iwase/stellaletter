class UserSkill < ApplicationRecord
	attachment :image # 画像用

  has_many :users,through: :UserStatus

	#ユーザーの性癖
  has_many :user_status,dependent: :destroy

  # 地雷表示

  validates :name, presence: true
end
