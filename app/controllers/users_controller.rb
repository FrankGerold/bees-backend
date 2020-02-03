class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show]

# Testing Purposes
  def index
    @users = User.all
    render json: UserSerializer.new(@users)
  end

  def show
    @user = User.find(params[:id])
    render json: UserSerializer.new(@user)
  end
  # End Test Methods

  def profile
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token({user_id: @user.id})
      render json: {user: UserSerializer.new(@user),
        jwt: @token}, status: :created
    else
      render json: { message: 'User Creation Failed', errors: @user.errors.full_messages}, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:userName, :name, :password, :bio, :photo)
  end

end
