class AccountsController < ApplicationController

  before_filter :require_user, :except => [:new, :create]

  def show
  end

  def new
  end

  def create
    if params[:username].present?
      session[:user_id] = User.find_or_create_by_username(params[:username])

      redirect_to account_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil

    redirect_to login_path
  end

end