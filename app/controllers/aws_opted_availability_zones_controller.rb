class AwsOptedAvailabilityZonesController < ApplicationController
  before_action :set_aws_opted_availability_zone, only: %i[ show update destroy ]

  # GET /aws_opted_availability_zones
  def index
    @aws_opted_availability_zones = AwsOptedAvailabilityZone.all

    render json: @aws_opted_availability_zones
  end

  # GET /aws_opted_availability_zones/1
  def show
    render json: @aws_opted_availability_zone
  end

  # POST /aws_opted_availability_zones
  def create
    @aws_opted_availability_zone = AwsOptedAvailabilityZone.new(aws_opted_availability_zone_params)

    if @aws_opted_availability_zone.save
      render json: @aws_opted_availability_zone, status: :created, location: @aws_opted_availability_zone
    else
      render json: @aws_opted_availability_zone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aws_opted_availability_zones/1
  def update
    if @aws_opted_availability_zone.update(aws_opted_availability_zone_params)
      render json: @aws_opted_availability_zone
    else
      render json: @aws_opted_availability_zone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aws_opted_availability_zones/1
  def destroy
    @aws_opted_availability_zone.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aws_opted_availability_zone
      @aws_opted_availability_zone = AwsOptedAvailabilityZone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aws_opted_availability_zone_params
      params.require(:aws_opted_availability_zone).permit(:aws_vpc, :aws_availability_zone)
    end
end
