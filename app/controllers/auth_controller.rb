class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(email: user_login_params[:email])
    if @user&.authenticate(user_login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    elsif !@user 
      render json: { error: "Please check your email" }, status: :unauthorized
    else
      render json: { error: "Please check your password" }, status: :unauthorized
    end
  end

  def reauth
    render json: { user: UserSerializer.new(current_user) }, status: :accepted

  end

  private

  def user_login_params
    params.require(:user).permit(:email, :password)
  end
end
