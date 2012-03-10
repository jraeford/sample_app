class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    #raise params[:user].inspect
    #raise params.inspect
    @user = User.new(params[:user])
    if @user.save
      #redirect_to user_path(@user)
      flash[:success] = "Welcome to the Sample App!"
      #redirect_to @user
      redirect_to @user, :flash => { :success => "Welcome to the Sample App!"}
    else
      @title = "Sign up"
      render 'new'
    end
  end

end
