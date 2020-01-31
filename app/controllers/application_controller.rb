class ApplicationController < ActionController::API
  before_action :authorized, :keygen

  def keygen
    @ecdsa_key = OpenSSL::PKey::EC.new 'secp384r1'
    @ecdsa_key.generate_key
    @ecdsa_public = OpenSSL::PKey::EC.new @ecdsa_key
    @ecdsa_public.private_key = nil
  end



  def encode_token(payload)
    JWT.encode(payload, Rails.application.ecdsa_key, 'ES384')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token(token)
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, @ecdsa_public, true, 'ES384')[0]
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find(user_id)
    end
  end

  def logged_in
    !!current_user
  end

  def authorized
    render json: {message: 'Please Log In!'}, status: :unauthorized unless logged_in
  end


end
