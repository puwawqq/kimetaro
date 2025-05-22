class SessionsController < ApplicationController
  def new
  
  end

  def create
    user = User.find_by(name: params[:name])  
    if user && user.password == params[:password]  
      session[:user_id] = user.id  
      redirect_to "/rank" 
    else
      flash[:alert] = "名前かパスワードが間違っています"
      render :new 
  end

  def destroy
      session[:user_id] = nil 
      redirect_to root_path  
  end
end