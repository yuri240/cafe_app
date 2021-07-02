class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :area
  belongs_to_active_hash :favorite
  belongs_to_active_hash :price

  validates :images, presence: true
  validates :images, length: { minimum: 1, maximum: 5, message: "は1枚以上5枚以下にしてください" }


    # <<アクティブストレージの設定関連>>
    has_many_attached :images
    # <<アソシエーション>>
    belongs_to :user
    has_many :comments, dependent: :destroy
end
