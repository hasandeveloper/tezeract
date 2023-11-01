require "test_helper"

class AwsVpcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_vpc = aws_vpcs(:one)
  end

  test "should get index" do
    get aws_vpcs_url, as: :json
    assert_response :success
  end

  test "should create aws_vpc" do
    assert_difference("AwsVpc.count") do
      post aws_vpcs_url, params: { aws_vpc: { account_id: @aws_vpc.account_id, ipv4_cidr_block: @aws_vpc.ipv4_cidr_block, name: @aws_vpc.name, tenancy: @aws_vpc.tenancy } }, as: :json
    end

    assert_response :created
  end

  test "should show aws_vpc" do
    get aws_vpc_url(@aws_vpc), as: :json
    assert_response :success
  end

  test "should update aws_vpc" do
    patch aws_vpc_url(@aws_vpc), params: { aws_vpc: { account_id: @aws_vpc.account_id, ipv4_cidr_block: @aws_vpc.ipv4_cidr_block, name: @aws_vpc.name, tenancy: @aws_vpc.tenancy } }, as: :json
    assert_response :success
  end

  test "should destroy aws_vpc" do
    assert_difference("AwsVpc.count", -1) do
      delete aws_vpc_url(@aws_vpc), as: :json
    end

    assert_response :no_content
  end
end
