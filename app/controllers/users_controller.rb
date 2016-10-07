class UsersController < ApplicationController

  def login
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      session[:login] = true
      erb :'/session/login'
    end
  end

  def signin
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else
      @errors = ["Invalid email or password"]
      erb :'/session/login', locals: {errors: @errors}
    end
  end

  def logout
    require_user
    session.clear
    redirect '/'
  end

  def new
    erb :'/users/_new'
  end

  def create
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      redirect '/'
    else
      @errors = user.errors.full_messages
      erb :'/users/_new', locals: {errors: @errors}
    end
  end

  def show
    require_user
    @user = User.find_by(id: params[:id])
    # binding.pry
    erb :'/users/show'
  end

end
