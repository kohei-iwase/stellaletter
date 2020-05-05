class Bouquet < ApplicationRecord
	belongs_to :user,		null: false
  	belongs_to :character,  optional: true
  	belongs_to :visiter, 	optional: true
  	belongs_to :visiter, 	optional: true
end
