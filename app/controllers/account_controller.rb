class AccountController < ApplicationController

  before_filter :require_user, :except => [:login]

  def index

  end

  def login
    if params[:username].present?
      session[:user_id] = User.find_or_create_by_username(params[:username])

      redirect_to account_path
    end
  end

  def logout
    session[:user_id] = nil

    redirect_to login_path
  end

end