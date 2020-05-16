class LikeAndDislike < ApplicationRecord
	attachment :image # 画像用


  has_many :users

	#ユーザーの性癖
  has_many :likes_status,       class_name: 'UserStatus',
                                foreign_key: 'like_id',
                                dependent: :destroy

  # 地雷表示
  has_many :dislikes_status, class_name: 'UserStatus',
                                  foreign_key: 'dislike_id',
                                  dependent: :destroy

 	validates :name, presence: true



end
