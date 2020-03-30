class Character < ApplicationRecord

belongs_to :user # ユーザーにネスト
attachment :image # 画像用
has_many :comment, dependent: :destroy
has_many :favorites, dependent: :destroy
        def favorited_by?(user)
          favorites.where(user_id: user.id).exists?
        end

end
