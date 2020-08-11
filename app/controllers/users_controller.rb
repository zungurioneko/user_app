class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.new
    @users = User.order(id: :asc)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    user = User.create!(user_params)
    redirect_to user, notice: "登録しました"
  end

  def edit
  end

  def update
    @user.update!(user_params)
    redirect_to @user, notice: "更新しました"
  end

  def destroy
    @user.destroy!
    redirect_to @user, alert: "削除しました"
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :age)
  end
end
