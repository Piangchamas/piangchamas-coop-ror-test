class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to '/dashboard', notice: "Registration successful"
    else
      render :new
    end
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :gender, :email, :phone_number, :subject)
  end

  def dashboard
  end
end
