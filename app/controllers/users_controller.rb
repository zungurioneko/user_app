class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def show
  end

  def new
  end

  def create
    user = User.create!(post_params)
    redirect_to user
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :age)
  end
end
