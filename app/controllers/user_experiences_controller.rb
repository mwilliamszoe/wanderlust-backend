class UserExperiencesController < ApplicationController
  before_action :set_user_experience, only: [:show, :update, :destroy]

  # GET /user_experiences
  def index
    @user_experiences = UserExperience.all

    render json: @user_experiences
  end

  # GET /user_experiences/1
  def show
    render json: @user_experience
  end

  # POST /user_experiences
  def create
    @user_experience = UserExperience.new(user_experience_params)

    if @user_experience.save
      render json: @user_experience, status: :created, location: @user_experience
    else
      render json: @user_experience.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_experiences/1
  def update
    if @user_experience.update(user_experience_params)
      render json: @user_experience
    else
      render json: @user_experience.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_experiences/1
  def destroy
    @user_experience.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_experience
      @user_experience = UserExperience.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_experience_params
      params.require(:user_experience).permit(:user_id, :experience_id)
    end
end
