class Partner < ApplicationRecord
	belongs_to :partner, 	class_name: 'Character', foreign_key: 'partner_id', optional: true
	belongs_to :character, 	class_name: 'Character', foreign_key: 'character_id'

	validates :character_id, presence: true
end
