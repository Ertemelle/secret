class UsersController < ApplicationController
  def index
  end

  def create
    @user = User.create(email: params[:user][:email], password: params[:user][:password])
    @user.save
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
