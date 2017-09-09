require 'test_helper'

class ApisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api = apis(:one)
  end

  test "should get index" do
    get apis_url, as: :json
    assert_response :success
  end

  test "should create api" do
    assert_difference('Api.count') do
      post apis_url, params: { api: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api" do
    get api_url(@api), as: :json
    assert_response :success
  end

  test "should update api" do
    patch api_url(@api), params: { api: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api" do
    assert_difference('Api.count', -1) do
      delete api_url(@api), as: :json
    end

    assert_response 204
  end
end
