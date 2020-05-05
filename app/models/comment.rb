class Comment < ApplicationRecord
	attachment :image # 画像用
	
	belongs_to :user
	belongs_to :character

	validates :user_id, presence: true
end
