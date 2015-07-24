class PasswordResetsController < ApplicationController
  before_filter :load_user_using_perishable_token, :only => [ :edit, :update ]

  def new
    binding.pry
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      #@user.deliver_password_reset_instructions!
      flash[:notice] = "Instructions to reset your password have been emailed to you #{request.url}/#{@user.perishable_token}/edit"
    else
      flash.now[:error] = "No user was found with email address #{params[:email]}"
    end
    render :action => :new
  end

  def edit
  end

  def update
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.save
      flash[:success] = "Your password was successfully updated"
      redirect_to root_path
    else
      flash[:error] = "Unable to save password"
      render :action => :edit
    end
  end


  private

  def load_user_using_perishable_token
    @user = User.find_by_perishable_token(params[:id])
    unless @user
      flash[:error] = "We're sorry, but we could not locate your account"
      # redirect_to root_path
    end
  end
end