class StaticPagesController < ApplicationController
  before_action :require_login, only: [:secret]

  def home
  end

  def secret
  end

  def require_login
    if logged_in?
    else
      redirect_to login_path
    end
  end
end
