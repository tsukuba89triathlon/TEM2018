class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def check_logined
    unless session[:member_id] 
      flash[:referer] = request.fullpath
      render "accounts/login"
    end
  end
end
