class Partnership < ApplicationRecord

	belongs_to :follower, class_name: "Character"
	belongs_to :followed, class_name: "Character"
	validates :follower_id, presence: true 
	validates :followed_id, presence: true

end
