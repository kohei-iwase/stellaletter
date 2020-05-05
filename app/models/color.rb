class Color < ApplicationRecord
	attachment :image # 画像用

	has_many :character_status

	validates :name, presence: true
end
