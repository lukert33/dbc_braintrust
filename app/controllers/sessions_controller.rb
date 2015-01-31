class SessionsController < ApplicationController
  def create
    user = User.all.find do |u|
      u.authenticate_login(session_params)
    end

    if user
      session[:user_id] = user.id
      redirect_to root_path
    else
      session[:errors] = "Invalid login credentials"
      redirect_to "/login"
    end
  end

  def new
    render "login"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private
  def session_params
    params.require("/login").permit(:username, :password)
  end

end
