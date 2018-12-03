class LikesController < ApplicationController
  before_action :set_like, only: [:show, :update, :destroy]

  def index
    @likes = Like.all
    render json: @likes
  end

  def show
    render json: @like
  end

  def create
    @like = Like.new(like_params)
    
    byebug
    if @like.save
      render json: @like, status: :created, location: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
    # @like = Like.create(like_params)

  end

  def update
    if @like.update(like_params)
      render json: @like
    else
      render json: @like.errors, status: :unprocessable_entity
    end
  end

  # DELETE /likes/1
  def destroy
    @like.destroy
  end

  private
    def set_like
      @like = Like.find(params[:id])
    end

    def like_params

      params.require(:like).permit(:user_id, :experience_id)
      # params.permit(:user_id, :experience_id)
    end
end
