class SessionsController < ApplicationController
  def new
  end

  def create
   user = User.find_by(params[:name])
   if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
   else
      redirect_to login_url, alert: "Invalid user/password combo"
   end
  end

  def destroy
      session[:user_id] = nil
      redirect_to store_url, notice: "logged out"
  end
end
