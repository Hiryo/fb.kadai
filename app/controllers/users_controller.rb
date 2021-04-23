class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to user_path(@user.id), notice: "ユーザが作成されました！"
    else
      render :new
    end
  end

  def show
    @users = User.find(params[:id])
  end

  private
  def params_user
  params.require(:user).permit(:name, :email, :password)
  end
end
