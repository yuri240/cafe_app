class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]

  has_many :posts
  has_many :comments
  has_many :sns_credentials

# 最終的にuserのインスタンスを返すクラスメソッド
  # SNSと同emailのユーザが存在すればそのユーザを返す。いなければuserを作成し返す。
  def self.from_omniauth(auth)
    # auth.info['email']にSNSサービスの登録emailが入っているのでそれを使用して検索
    user = User.where(email: auth.info['email']).first

    unless user
      password = Devise.friendly_token[8,12] + "1a"
      user = User.new(
        name: auth.info['name'],
        email: auth.info['email'],
        password: password,
        password_confirmation: password
      )
    end
    user
  end
end
