require "test_helper"

class AwsOptedAvailabilityZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_opted_availability_zone = aws_opted_availability_zones(:one)
  end

  test "should get index" do
    get aws_opted_availability_zones_url, as: :json
    assert_response :success
  end

  test "should create aws_opted_availability_zone" do
    assert_difference("AwsOptedAvailabilityZone.count") do
      post aws_opted_availability_zones_url, params: { aws_opted_availability_zone: { aws_availability_zone: @aws_opted_availability_zone.aws_availability_zone, aws_vpc: @aws_opted_availability_zone.aws_vpc } }, as: :json
    end

    assert_response :created
  end

  test "should show aws_opted_availability_zone" do
    get aws_opted_availability_zone_url(@aws_opted_availability_zone), as: :json
    assert_response :success
  end

  test "should update aws_opted_availability_zone" do
    patch aws_opted_availability_zone_url(@aws_opted_availability_zone), params: { aws_opted_availability_zone: { aws_availability_zone: @aws_opted_availability_zone.aws_availability_zone, aws_vpc: @aws_opted_availability_zone.aws_vpc } }, as: :json
    assert_response :success
  end

  test "should destroy aws_opted_availability_zone" do
    assert_difference("AwsOptedAvailabilityZone.count", -1) do
      delete aws_opted_availability_zone_url(@aws_opted_availability_zone), as: :json
    end

    assert_response :no_content
  end
end
