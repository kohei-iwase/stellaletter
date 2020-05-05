class LikeAndDislike < ApplicationRecord
	attachment :image # 画像用

	#ユーザーの性癖
  	has_many :likes,class_name:  "UserStatus", foreign_key: "like_id", dependent: :destroy
  	#ユーザーの地雷
  	has_many :dislikes,class_name:  "UserStatus", foreign_key: "like_id", dependent: :destroy

  	#キャラクターの西壁
  	has_many :likes,class_name:  "CharacterStatus", foreign_key: "like_id", dependent: :destroy
  	#キャラクターの地雷
  	has_many :likes,class_name:  "CharacterStatus", foreign_key: "like_id", dependent: :destroy

  	validates :name, presence: true

end
