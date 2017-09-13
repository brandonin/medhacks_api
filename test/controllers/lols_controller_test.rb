require 'test_helper'

class LolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lol = lols(:one)
  end

  test "should get index" do
    get lols_url, as: :json
    assert_response :success
  end

  test "should create lol" do
    assert_difference('Lol.count') do
      post lols_url, params: { lol: { test: @lol.test } }, as: :json
    end

    assert_response 201
  end

  test "should show lol" do
    get lol_url(@lol), as: :json
    assert_response :success
  end

  test "should update lol" do
    patch lol_url(@lol), params: { lol: { test: @lol.test } }, as: :json
    assert_response 200
  end

  test "should destroy lol" do
    assert_difference('Lol.count', -1) do
      delete lol_url(@lol), as: :json
    end

    assert_response 204
  end
end
