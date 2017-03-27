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
    render plain: params.inspect

    
  end

  def login
  end


  private
    def user_params
      params.require(:user).permit!  
    end
end
