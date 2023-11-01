class CloudProvidersController < ApplicationController
  before_action :set_cloud_provider, only: %i[ show update destroy ]

  # GET /cloud_providers
  def index
    @cloud_providers = CloudProvider.all

    render json: @cloud_providers
  end

  # GET /cloud_providers/1
  def show
    render json: @cloud_provider
  end

  # POST /cloud_providers
  def create
    @cloud_provider = CloudProvider.new(cloud_provider_params)

    if @cloud_provider.save
      render json: @cloud_provider, status: :created, location: @cloud_provider
    else
      render json: @cloud_provider.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cloud_providers/1
  def update
    if @cloud_provider.update(cloud_provider_params)
      render json: @cloud_provider
    else
      render json: @cloud_provider.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cloud_providers/1
  def destroy
    @cloud_provider.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloud_provider
      @cloud_provider = CloudProvider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cloud_provider_params
      params.require(:cloud_provider).permit(:name, :avatar)
    end
end
