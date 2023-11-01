class AwsRegionsController < ApplicationController
  before_action :set_aws_region, only: %i[ show update destroy ]

  # GET /aws_regions
  def index
    @aws_regions = AwsRegion.all

    render json: @aws_regions
  end

  # GET /aws_regions/1
  def show
    render json: @aws_region
  end

  # POST /aws_regions
  def create
    @aws_region = AwsRegion.new(aws_region_params)

    if @aws_region.save
      render json: @aws_region, status: :created, location: @aws_region
    else
      render json: @aws_region.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aws_regions/1
  def update
    if @aws_region.update(aws_region_params)
      render json: @aws_region
    else
      render json: @aws_region.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aws_regions/1
  def destroy
    @aws_region.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aws_region
      @aws_region = AwsRegion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aws_region_params
      params.require(:aws_region).permit(:name)
    end
end
