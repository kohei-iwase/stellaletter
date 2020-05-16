class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  attachment :image # 画像用

  has_many :characters, dependent: :destroy
  has_many :bouquets, dependent: :destroy
  has_many :bouquets_characters,through: :bouquets, source: :character
  # フォロイー表示
  has_many :active_relationships, class_name: 'Relationship',
                                  foreign_key: 'follower_id',
                                  dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed


  # フォロワー表示
  has_many :passive_relationships, class_name: 'Relationship',
                                   foreign_key: 'followed_id',
                                   dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower

  has_many :user_status,dependent: :destroy

  has_many :systems, through: :user_status, source: :system

  #　性癖表示
  has_many :likes_status,       class_name: 'UserStatus',
                                foreign_key: 'like_id',
                                dependent: :destroy
  has_many :likes, through: :likes_status, source: :like


  # 地雷表示
  has_many :dislikes_status, class_name: 'UserStatus',
                                  foreign_key: 'dislike_id',
                                  dependent: :destroy
  has_many :dislikes, through: :dislikes_status, source: :dislike


  # ユーザーをフォローする
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # ユーザーをフォロー解除する
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # 現在のユーザーがフォローしてたら true を返す
  def following?(other_user)
  	following.include?(other_user)
  end

  def followed_by?(other_user)
  	followers.include?(other_user)
  end

  def follow_system(system)
    user_status.create(system_id: system.id)
  end

  def unfollow_system(system)
    user_status.find_by(system_id: system.id).destroy
  end

  def following_system?(system)
    systems.include?(system)
  end

  def follow_like(like)
    likes_status.create(like_id: like.id)
  end

  def unfollow_like(like)
    likes_status.find_by(like_id: like.id).destroy
  end

  def following_like?(like)
    likes.include?(like)
  end

  def follow_dislike(dislike)
    likes_status.create(dislike_id: dislike.id)
  end

  def unfollow_dislike(dislike)
    dislikes_status.find_by(dislike_id: dislike.id).destroy
  end

  def following_dislike?(dislike)
    dislike.include?(dislike)
  end

  # タイムラインの構築
  def timeline
    following_ids = "SELECT followed_id FROM relationships
                     WHERE follower_id = :user_id"
    Character.where("user_id IN (#{following_ids})
                    OR user_id = :user_id", user_id: id)
  end

end
