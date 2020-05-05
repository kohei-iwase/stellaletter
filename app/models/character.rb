class Character < ApplicationRecord

belongs_to :user # ユーザーにネスト
attachment :image # 画像用
validates :name, presence: true #キャラクターの名前は必須とする
has_many :comments, 		dependent: :destroy
has_many :bouquets, 		dependent: :destroy
has_many :character_skills, dependent: :destroy
        def bouqueted_by?(user)
          bouquets.where(user_id: user.id).exists?
        end

end
