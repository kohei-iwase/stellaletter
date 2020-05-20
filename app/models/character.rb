class Character < ApplicationRecord

	attachment :image # 画像用

	belongs_to :user 
	has_many :comments, 		dependent: :destroy
	has_many :bouquets, 		dependent: :destroy

  	has_many :active_partnerships, class_name: 'Partnership',
                                  foreign_key: 'follower_id',
                                  dependent: :destroy
  	has_many :following, through: :active_partnerships, source: :followed


  	# フォロワー表示
  	has_many :passive_partnerships, class_name: 'Partnership',
                                   foreign_key: 'followed_id',
                                   dependent: :destroy
  	has_many :followers, through: :passive_partnerships, source: :follower


	#キャラクターは複数の詳細ステータスを持つようにする（システム超えての使い回しのため）
	has_many :character_status, dependent: :destroy

	validates :name, presence: true #キャラクターの名前は必須とする

	#お気に入り登録したユーザーを表示
    def bouqueted_by?(user)
        bouquets.where(user_id: user.id).exists?
    end

  # キャラクターをフォローする
  def follow(partner)
    active_partnerships.create(followed_id: partner.id)
  end

  # キャラクターをフォロー解除する
  def unfollow(partner)
    active_partnerships.find_by(followed_id: partner.id).destroy
  end

  # 現在のキャラクターがフォローしてたら true を返す
  def following?(partner)
  	following.include?(partner)
  end

  # 現在のキャラクターにフォローされてたら true を返す
  def followed_by?(partner)
  	followers.include?(partner)
  end


end
