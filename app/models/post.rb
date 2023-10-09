class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area
  belongs_to_active_hash :favorite
  belongs_to_active_hash :price

  validates :title, presence: true
  validates :impression, presence: true
  validates :images, presence: true
  validates :images, length: { minimum: 1, maximum: 5, message: "は1枚以上5枚以下にしてください" }

  with_options numericality: { other_than: 0, message: "can't be blank" } do
    validates :area_id
    validates :favorite_id
    validates :price_id
  end


    # <<アクティブストレージの設定関連>>
    has_many_attached :images
    # <<アソシエーション>>
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_many :likes

    def liked_by?(user)
      likes.where(user_id: user.id).exists?
    end
end
