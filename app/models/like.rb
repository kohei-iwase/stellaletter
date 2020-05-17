class Like < ApplicationRecord
	attachment :image # 画像用


  has_many :users,through: :UserStatus

	#ユーザーの性癖
  has_many :user_status,dependent: :destroy

  # 地雷表示
  has_many :dislikes_status,      class_name: 'UserStatus',
                                  foreign_key: 'dislike_id',
                                  dependent: :destroy

 	validates :name, presence: true



end
