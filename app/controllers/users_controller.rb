class UsersController < ApplicationController
  before_action :current_user?, only: [:edit]

  def index
  end

  def create
    @user = User.create(email: params[:user][:email], password: params[:user][:password])
    if @user.save
      log_in @user
      redirect_to secret_path
    else
      render 'new'
    end
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

  def current_user?
    if current_user != nil || current_user.email != User.find(params[:id]).email
      redirect_to home_path
    else
    end
  end
end
