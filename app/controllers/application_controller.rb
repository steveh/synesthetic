class ApplicationController < ActionController::Base

  protect_from_forgery
  
  before_filter :require_user

  private

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def require_user
      redirect_to login_path unless current_user
    end

end