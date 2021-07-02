# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # facebook経由のログインの場合は、アカウント選択後、facebookメソッドにレスポンスが来ます。
  def facebook
    authorization
  end

  # google経由のログインの場合は、アカウント選択後、googleメソッドにレスポンスが来ます。
  def google_oauth2
    authorization
  end

  private

  def authorization

    auth = request.env["omniauth.auth"]
    @user = User.from_omniauth(auth)

    if @user.persisted?
      #ユーザー情報が登録済みなので、新規登録ではなくログイン処理を行う
      sign_in_and_redirect @user, event: :authentication
    else
      #ユーザー情報が未登録なので、新規登録画面へ遷移する
      render template: 'devise/registrations/new'
    end
  end
end