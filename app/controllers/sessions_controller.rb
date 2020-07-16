class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    if logged_in?
      redirect_to '/loggedin'
    end
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect_to '/events'
    else
       redirect_to '/login'
    end
  end

  def login
  end

  def welcome
  end

  def logout
    session.delete(:user_id)
    redirect_to '/'
  end
end
