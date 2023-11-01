require "test_helper"

class AwsDataCentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_data_center = aws_data_centers(:one)
  end

  test "should get index" do
    get aws_data_centers_url, as: :json
    assert_response :success
  end

  test "should create aws_data_center" do
    assert_difference("AwsDataCenter.count") do
      post aws_data_centers_url, params: { aws_data_center: { aws_region: @aws_data_center.aws_region, aws_vpc: @aws_data_center.aws_vpc } }, as: :json
    end

    assert_response :created
  end

  test "should show aws_data_center" do
    get aws_data_center_url(@aws_data_center), as: :json
    assert_response :success
  end

  test "should update aws_data_center" do
    patch aws_data_center_url(@aws_data_center), params: { aws_data_center: { aws_region: @aws_data_center.aws_region, aws_vpc: @aws_data_center.aws_vpc } }, as: :json
    assert_response :success
  end

  test "should destroy aws_data_center" do
    assert_difference("AwsDataCenter.count", -1) do
      delete aws_data_center_url(@aws_data_center), as: :json
    end

    assert_response :no_content
  end
end
