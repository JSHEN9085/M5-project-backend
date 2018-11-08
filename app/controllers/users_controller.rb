class UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      # render json: { user: UserSerializer.new(@user) }, status: :created
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

private
  def user_params
    params.require(:user).permit(
      :firstname,
      :lastname,
      :email,
      :password_digest,
      :large_picture,
      :medium_picture,
      :small_picture,
      :city_location,
      :state_location
    )
  end

  def user_login_params
    params.require(:user).permit(:email, :password)
  end

end
