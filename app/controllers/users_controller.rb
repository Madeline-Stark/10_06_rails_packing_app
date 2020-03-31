class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create 
    # TODO 
    # check for validations
    # log in
    @user = User.create(user_params)
    session[:user_id] = @user.id
    # go to users/:id or /users/:user_id/lists
    redirect_to lists_path
  end 

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
