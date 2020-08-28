require 'test_helper'

class ChangeRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_request = change_requests(:one)
  end

  test "should get index" do
    get change_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_change_request_url
    assert_response :success
  end

  test "should create change_request" do
    assert_difference('ChangeRequest.count') do
      post change_requests_url, params: { change_request: { app_id: @change_request.app_id, todo: @change_request.todo } }
    end

    assert_redirected_to change_request_url(ChangeRequest.last)
  end

  test "should show change_request" do
    get change_request_url(@change_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_request_url(@change_request)
    assert_response :success
  end

  test "should update change_request" do
    patch change_request_url(@change_request), params: { change_request: { app_id: @change_request.app_id, todo: @change_request.todo } }
    assert_redirected_to change_request_url(@change_request)
  end

  test "should destroy change_request" do
    assert_difference('ChangeRequest.count', -1) do
      delete change_request_url(@change_request)
    end

    assert_redirected_to change_requests_url
  end
end
