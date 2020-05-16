class Book < ApplicationRecord
	attachment :image # 画像用

	belongs_to :systems

	validates :title, presence: true
end
