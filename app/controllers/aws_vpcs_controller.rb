class AwsVpcsController < ApplicationController
  before_action :set_aws_vpc, only: %i[ show update destroy ]

  # GET /aws_vpcs
  def index
    @aws_vpcs = AwsVpc.all

    render json: @aws_vpcs
  end

  # GET /aws_vpcs/1
  def show
    render json: @aws_vpc
  end

  # POST /aws_vpcs
  def create
    @aws_vpc = AwsVpc.new(aws_vpc_params)

    if @aws_vpc.save
      render json: @aws_vpc, status: :created, location: @aws_vpc
    else
      render json: @aws_vpc.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /aws_vpcs/1
  def update
    if @aws_vpc.update(aws_vpc_params)
      render json: @aws_vpc
    else
      render json: @aws_vpc.errors, status: :unprocessable_entity
    end
  end

  # DELETE /aws_vpcs/1
  def destroy
    @aws_vpc.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aws_vpc
      @aws_vpc = AwsVpc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aws_vpc_params
      params.require(:aws_vpc).permit(:name, :ipv4_cidr_block, :tenancy, :account_id)
    end
end
