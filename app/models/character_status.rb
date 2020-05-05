class CharacterStatus < ApplicationRecord

	belongs_to 	:character
	#システム
	belings_to	:system
	#キャラクタースキル
	belongs_to  :character_skills
	#花章
	belongs_to	:flowers
	#色
	belongs_to  :colors


	validates :character_id, presence: true
	validates :name, presence: true
end
