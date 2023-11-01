class AwsSubnetsController < ApplicationController
  before_action :set_aws_subnet, only: %i[ show update destroy ]

  # GET /aws_subnets
  def index
    @aws_subnets = AwsSubnet.all

    render json: @aws_subnets
  end

  # GET /aws_subnets/1
  def show
    render json: @aws_subnet
  end

  # POST /aws_subnets
  def create
    @aws_subnet = AwsSubnet.new(aws_subnet_params)

    if @aws_subnet.save
      render json: @aws_subnet, status: :created, location: @aws_subnet
    else
      render json: @aws_subnet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aws_subnets/1
  def update
    if @aws_subnet.update(aws_subnet_params)
      render json: @aws_subnet
    else
      render json: @aws_subnet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aws_subnets/1
  def destroy
    @aws_subnet.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aws_subnet
      @aws_subnet = AwsSubnet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aws_subnet_params
      params.require(:aws_subnet).permit(:name, :aws_opted_availability_zone_id)
    end
end
