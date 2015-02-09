class UsersController < ApplicationController
  def index
    @user = User.all 
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])  
  end  

  def create
    @user = User.new(user_params)

      if @user.save
        redirect_to @user
      else
        render 'new'
      end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
end
