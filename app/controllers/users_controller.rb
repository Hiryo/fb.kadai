class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      # ログインもする機能
      redirect_to user_path, notice: "ユーザが作成されました！"
    else
      render :new
    end
  end
end
