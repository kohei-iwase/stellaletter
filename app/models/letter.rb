class Letter < ApplicationRecord
	attachment :image # 画像用

	#letterを出すのはキャラクター
	belongs_to :from_id, class_name: "Character"
	#letterを受け取るのはキャラクター
	belongs_to :to_id, 	 class_name: "Character"

	validates :title, presence: true
end
