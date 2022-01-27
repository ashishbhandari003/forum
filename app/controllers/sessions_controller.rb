class SessionsController < ApplicationController

  def new
  end
  
  def create
    user = User.find_by(email: params[:email])
    if user.present? and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully'
    else
      flash.now[:alert] = 'Invalid credentials'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'Logged Out successfully'
  end
end