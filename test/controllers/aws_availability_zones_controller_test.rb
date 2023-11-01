require "test_helper"

class AwsAvailabilityZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_availability_zone = aws_availability_zones(:one)
  end

  test "should get index" do
    get aws_availability_zones_url, as: :json
    assert_response :success
  end

  test "should create aws_availability_zone" do
    assert_difference("AwsAvailabilityZone.count") do
      post aws_availability_zones_url, params: { aws_availability_zone: { is_available: @aws_availability_zone.is_available, name: @aws_availability_zone.name, region_id: @aws_availability_zone.region_id } }, as: :json
    end

    assert_response :created
  end

  test "should show aws_availability_zone" do
    get aws_availability_zone_url(@aws_availability_zone), as: :json
    assert_response :success
  end

  test "should update aws_availability_zone" do
    patch aws_availability_zone_url(@aws_availability_zone), params: { aws_availability_zone: { is_available: @aws_availability_zone.is_available, name: @aws_availability_zone.name, region_id: @aws_availability_zone.region_id } }, as: :json
    assert_response :success
  end

  test "should destroy aws_availability_zone" do
    assert_difference("AwsAvailabilityZone.count", -1) do
      delete aws_availability_zone_url(@aws_availability_zone), as: :json
    end

    assert_response :no_content
  end
end
