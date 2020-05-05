class CharacterSkill < ApplicationRecord
	belongs_to :character,		null: false
end
