class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user
      session[:user_id] = user.id
      flash[:info] = "Hello #{user.username}"
      redirect_to events_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:info] = 'Logged out'
    redirect_to login_path
  end
end
