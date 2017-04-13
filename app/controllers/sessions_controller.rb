class SessionsController < ApplicationController
#   create
#   redirects to login page if :name is nil (FAILED - 3)
#   redirects to login page if :name is empty (FAILED - 4)
#   sets session[:name] if :name was given (FAILED - 5)
# destroy
#   leaves session[:name] nil if it was not set (FAILED - 6)
#   clears session[:name] if it was set (FAILED - 7)
  def new
  end

  def create
    @username = params[:name]
    unless @username.present?
      redirect_to login_path
    else
      session[:name] = @username
      redirect_to home_path
    end
  end

  def destroy
    session.delete :name
    redirect_to home_path
  end
end
