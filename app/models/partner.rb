class Partner < ApplicationRecord
	belongs_to :partner, class_name: 'character', foreign_key: 'partner_id', optional: true
end
