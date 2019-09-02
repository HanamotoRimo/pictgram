class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  
  helper_method :current_user, :logged_in?
  
  before_action :require_login
  
  private
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in?
      !current_user.nil?
    end
    
    def require_login
      unless logged_in?
        flash[:error] = "ログインが必要です"
        redirect_to root_path
      end
    end
    
end