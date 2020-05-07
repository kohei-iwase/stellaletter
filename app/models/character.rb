class Character < ApplicationRecord

	attachment :image # 画像用

	belongs_to :user 
	has_many :comments, 		dependent: :destroy
	has_many :bouquets, 		dependent: :destroy

	#キャラクターは複数の詳細ステータスを持つようにする（システム超えての使い回しのため）
	has_many :character_status, dependent: :destroy

	validates :name, presence: true #キャラクターの名前は必須とする

        def bouqueted_by?(user)
          bouquets.where(user_id: user.id).exists?
        end

end
