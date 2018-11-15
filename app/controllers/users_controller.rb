class UsersController < ApplicationController
  skip_before_action :authorized, only: %i[create]

def create
  @user = User.create(user_params)
  if @user.valid?
    @token = encode_token(user_id: @user.id)
    render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
  else
    render json: { error: 'failed to create user' }, status: :not_acceptable
  end
end

  # def index
  #   @users = User.all
  #   render json: @users
  # end

  # def show
  #   render json: User.find(params[:id]), include: ['boats']
  # end

  # def update
  #   @user.update(user_params)
  #   if @user.save
  #     render json: @user, status: :accepted
  #   else
  #     render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end

  # def destroy
  #   render json: User.find(params[:id]).destroy
  # end

  private

  def user_params
    params.require(:user).permit(:username, :password, :avatar)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
