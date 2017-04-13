class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user , :require_login
  #current_user returns the current_user
  def current_user
    session[:name]
  end

  def require_login
    unless session.include? :name
      redirect_to login_path
    end
  end
end
