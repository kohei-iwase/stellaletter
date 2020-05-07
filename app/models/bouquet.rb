class Bouquet < ApplicationRecord
	belongs_to :user		
  	belongs_to :character

  	validates :user_id, presence: true
  	validates :character_id, presence: true
	validates :user_id, uniqueness: { scope: :character_id } #ブーケの一意性担保のため
end
