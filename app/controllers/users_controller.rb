class UsersController < ApplicationController
  def new
  	@user = User.new  
  end

  def edit
  end

  def create
  	@user = User.new(user_params)
	  if @user.save  
	    flash.now[:notice] = "Registration successful."  
	    redirect_to root_url  
	  else  
	    flash.now[:notice] = "Registration unsuccessful."  
	    render :action => 'new'  
	  end  
	end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :crypted_password,:password_confirmation)
  end
end
