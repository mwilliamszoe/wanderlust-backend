class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :update, :destroy]

  def index
    @regions = Region.all

    render json: @regions.to_json(include: [:countries ])
  end

  def show
    render json: @region
  end

  # def create
  #   @region = Region.new(region_params)

  #   if @region.save
  #     render json: @region, status: :created, location: @region
  #   else
  #     render json: @region.errors, status: :unprocessable_entity
  #   end
  # end

  # def update
  #   if @region.update(region_params)
  #     render json: @region
  #   else
  #     render json: @region.errors, status: :unprocessable_entity
  #   end
  # end


  # def destroy
  #   @region.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def region_params
      params.require(:region).permit(:name)
    end
end
