class UserExperiencesController < ApplicationController
  before_action :set_user_experience, only: [:show, :update, :destroy]

  def index
    @user_experiences = UserExperience.all

    render json: @user_experiences
  end

  def show
    render json: @user_experience
  end

  def create
    @user_experience = UserExperience.new(user_experience_params)

    if @user_experience.save
      render json: @user_experience, status: :created, location: @user_experience
    else
      render json: @user_experience.errors, status: :unprocessable_entity
    end
  end

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
