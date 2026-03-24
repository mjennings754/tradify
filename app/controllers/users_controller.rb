class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.expect(user: [:username, :password, :password_confirmation, :role])
  end
end
