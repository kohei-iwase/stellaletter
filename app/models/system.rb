class System < ApplicationRecord
	attachment :image # 画像用

	has_many :user_status, 		dependent: :destroy
	has_many :users,through: :user_status

	has_many :character_statuses, 	dependent: :destroy
	has_many :books,				dependent: :destroy

	validates :title, presence: true

    def followed_by?(user)
        user_statuses.where(user_id: user.id).exists?
    end

end
