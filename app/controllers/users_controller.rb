class UsersController < ApplicationController

  def create

    @user = User.create(user_params)
    if @user.valid?
      render json: #(serialize user here), status: created
    else
      render json: { error: 'User Creation Failed'}, status: not_acceptable
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:userName, :password, :bio, :photo)
  end

end
