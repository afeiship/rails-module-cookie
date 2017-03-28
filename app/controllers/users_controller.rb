class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # render plain: params.inspect
    @user = User.new(user_params)
    if @user.save
      redirect_to :root
    else
      render :new
    end
  end

  def create_login_session
    # render :plain 'create_login_session!'
    # render plain: params.inspect
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      # p 'login success!';
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      redirect_to :root
    else
      # p 'login failed!';
      redirect_to :root
    end
    
  end

  def login
  end

  def logout
    cookies.delete :auth_token
    redirect_to :root
  end


  private
    def user_params
      params.require(:user).permit!  
    end
end
