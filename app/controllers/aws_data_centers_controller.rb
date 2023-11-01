class AwsDataCentersController < ApplicationController
  before_action :set_aws_data_center, only: %i[ show update destroy ]

  # GET /aws_data_centers
  def index
    @aws_data_centers = AwsDataCenter.all

    render json: @aws_data_centers
  end

  # GET /aws_data_centers/1
  def show
    render json: @aws_data_center
  end

  # POST /aws_data_centers
  def create
    @aws_data_center = AwsDataCenter.new(aws_data_center_params)

    if @aws_data_center.save
      render json: @aws_data_center, status: :created, location: @aws_data_center
    else
      render json: @aws_data_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aws_data_centers/1
  def update
    if @aws_data_center.update(aws_data_center_params)
      render json: @aws_data_center
    else
      render json: @aws_data_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aws_data_centers/1
  def destroy
    @aws_data_center.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aws_data_center
      @aws_data_center = AwsDataCenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aws_data_center_params
      params.require(:aws_data_center).permit(:aws_vpc, :aws_region)
    end
end
