class Comment < ApplicationRecord

belongs_to :user # ユーザーにネスト
attachment :image # 画像用

end
