class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(userName: user_login_params[:userName])

    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user:UserSerializer.new(@user), jwt: token}, status: :accepted
    else
      render json: { message: 'Invalid Login!'}, status: :unauthorized
    end
  end

  # def persist
  #   if request.headers['Authorization']
  #       encoded_token = request.headers['Authorization'].split(' ')[1]
  #       token = JWT.decode(encoded_token, Rails.application.credentials.ecdsa_public, true, 'ES384')
  #       user_id = token[0]['user_id']
  #       user = User.find(user_id)
  #       render json: user
  #   end
  # end

  private

  def user_login_params
    params.permit(:userName, :password)
  end

end
