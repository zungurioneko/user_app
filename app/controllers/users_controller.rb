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
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "登録しました"
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "更新しました"
    else
      flash.now[:alert] = "更新に失敗しました"
      render :edit
    end
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
