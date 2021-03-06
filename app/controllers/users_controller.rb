class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy]
  # skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    render json: @users.to_json(include: [{liked_experiences: {include: :user}}, :experiences])
  end


  def show
    render json: @user
  end

  def new
    login
  end

  def liked_experience
    render json: Like.find_by( user_id:params[:user_id], experience_id:params[:experience_id])
  end

  def finduserfromtoken
    token = request.headers[:Authorization].split(" ")[1]
    id = JWT.decode(token, nil, false)[0]['user_id']
    @user = User.find(id)
    render json: @user.to_json(include: [{liked_experiences: {include: :user}}, :experiences])
  end
  # def create
  #   @user = User.create(user_params)
  #   if @user.valid?
  #     @token = encode_token(user_id: @user.id)
  #     render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
  #   else
  #     render json: { error: 'failed to create user' }, status: :not_acceptable
  #   end
  # end


  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @user.destroy
  end


  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end

end
