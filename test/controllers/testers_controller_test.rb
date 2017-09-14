require 'test_helper'

class TestersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tester = testers(:one)
  end

  test "should get index" do
    get testers_url, as: :json
    assert_response :success
  end

  test "should create tester" do
    assert_difference('Tester.count') do
      post testers_url, params: { tester: { log: @tester.log } }, as: :json
    end

    assert_response 201
  end

  test "should show tester" do
    get tester_url(@tester), as: :json
    assert_response :success
  end

  test "should update tester" do
    patch tester_url(@tester), params: { tester: { log: @tester.log } }, as: :json
    assert_response 200
  end

  test "should destroy tester" do
    assert_difference('Tester.count', -1) do
      delete tester_url(@tester), as: :json
    end

    assert_response 204
  end
end
