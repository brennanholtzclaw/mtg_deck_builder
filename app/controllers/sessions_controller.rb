class SessionsController < ApplicationController

  def create
    if user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = user.id
    end
    flash[:now] = "You've logged in!"
    redirect_to cards_path
  end

  def destroy
    session.clear
    flash[:now] = "You've logged out!"
    redirect_to root_path
  end
end
