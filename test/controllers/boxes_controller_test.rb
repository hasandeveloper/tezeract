require "test_helper"

class BoxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @box = boxes(:one)
  end

  test "should get index" do
    get boxes_url, as: :json
    assert_response :success
  end

  test "should create box" do
    assert_difference("Box.count") do
      post boxes_url, params: { box: { account_id: @box.account_id, disk: @box.disk, family_type: @box.family_type, name: @box.name, os_image: @box.os_image, vpc_id: @box.vpc_id } }, as: :json
    end

    assert_response :created
  end

  test "should show box" do
    get box_url(@box), as: :json
    assert_response :success
  end

  test "should update box" do
    patch box_url(@box), params: { box: { account_id: @box.account_id, disk: @box.disk, family_type: @box.family_type, name: @box.name, os_image: @box.os_image, vpc_id: @box.vpc_id } }, as: :json
    assert_response :success
  end

  test "should destroy box" do
    assert_difference("Box.count", -1) do
      delete box_url(@box), as: :json
    end

    assert_response :no_content
  end
end
