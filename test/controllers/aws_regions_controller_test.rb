require "test_helper"

class AwsRegionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_region = aws_regions(:one)
  end

  test "should get index" do
    get aws_regions_url, as: :json
    assert_response :success
  end

  test "should create aws_region" do
    assert_difference("AwsRegion.count") do
      post aws_regions_url, params: { aws_region: { name: @aws_region.name } }, as: :json
    end

    assert_response :created
  end

  test "should show aws_region" do
    get aws_region_url(@aws_region), as: :json
    assert_response :success
  end

  test "should update aws_region" do
    patch aws_region_url(@aws_region), params: { aws_region: { name: @aws_region.name } }, as: :json
    assert_response :success
  end

  test "should destroy aws_region" do
    assert_difference("AwsRegion.count", -1) do
      delete aws_region_url(@aws_region), as: :json
    end

    assert_response :no_content
  end
end
