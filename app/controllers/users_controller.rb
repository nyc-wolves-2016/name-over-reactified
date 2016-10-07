class UsersController < ApplicationController

  def login
    if logged_in?
      @user = current_user
      redirect_to @user
    else
      session[:login] = true
    end
  end

  def signin
    # find/find_by?
    @user = User.find_by(user_params)

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      @errors = ["Invalid email or password"]
      render 'login'
    end
  end

  def logout
    require_user
    session.clear
    redirect_to root_url
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = user.id
      redirect_to @user
    else
      @errors = user.errors.full_messages
      render 'new'
    end
  end

  def show
    require_user
    @user = User.find_by(id: params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
