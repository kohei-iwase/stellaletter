class CharacterSkill < ApplicationRecord
	belongs_to :character
	validates :character_id, presence: true
	validates :name, presence: true
end
