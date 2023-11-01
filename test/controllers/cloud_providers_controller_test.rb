require "test_helper"

class CloudProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cloud_provider = cloud_providers(:one)
  end

  test "should get index" do
    get cloud_providers_url, as: :json
    assert_response :success
  end

  test "should create cloud_provider" do
    assert_difference("CloudProvider.count") do
      post cloud_providers_url, params: { cloud_provider: { avatar: @cloud_provider.avatar, name: @cloud_provider.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cloud_provider" do
    get cloud_provider_url(@cloud_provider), as: :json
    assert_response :success
  end

  test "should update cloud_provider" do
    patch cloud_provider_url(@cloud_provider), params: { cloud_provider: { avatar: @cloud_provider.avatar, name: @cloud_provider.name } }, as: :json
    assert_response :success
  end

  test "should destroy cloud_provider" do
    assert_difference("CloudProvider.count", -1) do
      delete cloud_provider_url(@cloud_provider), as: :json
    end

    assert_response :no_content
  end
end
