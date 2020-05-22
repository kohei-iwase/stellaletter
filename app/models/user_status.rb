class UserStatus < ApplicationRecord
	belongs_to :user
	belongs_to :user_skill, optional: true
	belongs_to :like, optional: true
	# belongs_to :disilke, 	class_name: 'Like', optional: true
	belongs_to :system, optional: true
	belongs_to :romance_style, optional: true
	belongs_to :session_style, optional: true
	belongs_to :playing_style, optional: true

end
