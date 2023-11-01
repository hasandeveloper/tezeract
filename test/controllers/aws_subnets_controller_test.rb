require "test_helper"

class AwsSubnetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_subnet = aws_subnets(:one)
  end

  test "should get index" do
    get aws_subnets_url, as: :json
    assert_response :success
  end

  test "should create aws_subnet" do
    assert_difference("AwsSubnet.count") do
      post aws_subnets_url, params: { aws_subnet: { aws_opted_availability_zone_id: @aws_subnet.aws_opted_availability_zone_id, name: @aws_subnet.name } }, as: :json
    end

    assert_response :created
  end

  test "should show aws_subnet" do
    get aws_subnet_url(@aws_subnet), as: :json
    assert_response :success
  end

  test "should update aws_subnet" do
    patch aws_subnet_url(@aws_subnet), params: { aws_subnet: { aws_opted_availability_zone_id: @aws_subnet.aws_opted_availability_zone_id, name: @aws_subnet.name } }, as: :json
    assert_response :success
  end

  test "should destroy aws_subnet" do
    assert_difference("AwsSubnet.count", -1) do
      delete aws_subnet_url(@aws_subnet), as: :json
    end

    assert_response :no_content
  end
end
