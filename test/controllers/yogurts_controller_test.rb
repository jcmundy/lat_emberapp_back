require 'test_helper'

class YogurtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yogurt = yogurts(:one)
  end

  test "should get index" do
    get yogurts_url, as: :json
    assert_response :success
  end

  test "should create yogurt" do
    assert_difference('Yogurt.count') do
      post yogurts_url, params: { yogurt: { name: @yogurt.name } }, as: :json
    end

    assert_response 201
  end

  test "should show yogurt" do
    get yogurt_url(@yogurt), as: :json
    assert_response :success
  end

  test "should update yogurt" do
    patch yogurt_url(@yogurt), params: { yogurt: { name: @yogurt.name } }, as: :json
    assert_response 200
  end

  test "should destroy yogurt" do
    assert_difference('Yogurt.count', -1) do
      delete yogurt_url(@yogurt), as: :json
    end

    assert_response 204
  end
end
