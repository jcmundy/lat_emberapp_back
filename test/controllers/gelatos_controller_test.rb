require 'test_helper'

class GelatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gelato = gelatos(:one)
  end

  test "should get index" do
    get gelatos_url, as: :json
    assert_response :success
  end

  test "should create gelato" do
    assert_difference('Gelato.count') do
      post gelatos_url, params: { gelato: { name: @gelato.name } }, as: :json
    end

    assert_response 201
  end

  test "should show gelato" do
    get gelato_url(@gelato), as: :json
    assert_response :success
  end

  test "should update gelato" do
    patch gelato_url(@gelato), params: { gelato: { name: @gelato.name } }, as: :json
    assert_response 200
  end

  test "should destroy gelato" do
    assert_difference('Gelato.count', -1) do
      delete gelato_url(@gelato), as: :json
    end

    assert_response 204
  end
end
