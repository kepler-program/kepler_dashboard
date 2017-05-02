class SessionsController < ApplicationController


  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/index"
    else
      flash[:warning] = "Invalid email or password!"
      redirect_to "/login"
    end
  end

end
