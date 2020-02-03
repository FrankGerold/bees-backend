class ApplicationController < ActionController::API
  before_action :authorized

  # def keygen
  #   @ecdsa_key = OpenSSL::PKey::EC.new 'secp384r1'
  #   @ecdsa_key.generate_key
  #   @ecdsa_public = OpenSSL::PKey::EC.new @ecdsa_key
  #   @ecdsa_public.private_key = nil
  # end

  def encode_token(payload)
    private_key = OpenSSL::PKey::EC.new(Rails.application.credentials.ecdsa_private)
    begin
      JWT.encode(payload, private_key, 'ES384')
    rescue
      "TEST"
    end
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token(token)
    if auth_header
      token = auth_header.split(' ')[1]
      public_key = OpenSSL::PKey::EC.new(Rails.application.credentials.ecdsa_public)
      begin
        JWT.decode(token, public_key, true, 'ES384')[0]
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
