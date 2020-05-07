class UserStatus < ApplicationRecord
	belongs_to :user
	belongs_to :user_skill, optional: true
	belongs_to :ilke, 	class_name: 'LikeAndDislike', foreign_key: 'like_id', optional: true
	belongs_to :disilke, 	class_name: 'LikeAndDislike', foreign_key: 'like_id', optional: true
	belongs_to :system, optional: true
	belongs_to :romance_style, optional: true
	belongs_to :session_style, optional: true
	belongs_to :playing_style, optional: true
end