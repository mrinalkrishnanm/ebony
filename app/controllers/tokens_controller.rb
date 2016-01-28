class TokensController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  #for login verification
  def verify
    @user = User.find_by(username: params[:user][:username])
    @flag = @user.valid_password?(params[:user][:password])

    if @flag
      @token = @user.auth_token
      render json: {token: @token}, status: 200
    end
  end

  ## Receive token from frontend app and render the current user
  #if the token is valid


#when refreshing, to know whether the localStorage.token is valid.
  def verify_token
      @user = User.find_by(auth_token: params[:token])
      if @user
        render json: {user: @user}, status: 200
      end
  end
end
