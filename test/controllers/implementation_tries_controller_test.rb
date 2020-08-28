require 'test_helper'

class ImplementationTriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @implementation_try = implementation_tries(:one)
  end

  test "should get index" do
    get implementation_tries_url
    assert_response :success
  end

  test "should get new" do
    get new_implementation_try_url
    assert_response :success
  end

  test "should create implementation_try" do
    assert_difference('ImplementationTry.count') do
      post implementation_tries_url, params: { implementation_try: { change_request_step_id: @implementation_try.change_request_step_id, username_of_implementor: @implementation_try.username_of_implementor } }
    end

    assert_redirected_to implementation_try_url(ImplementationTry.last)
  end

  test "should show implementation_try" do
    get implementation_try_url(@implementation_try)
    assert_response :success
  end

  test "should get edit" do
    get edit_implementation_try_url(@implementation_try)
    assert_response :success
  end

  test "should update implementation_try" do
    patch implementation_try_url(@implementation_try), params: { implementation_try: { change_request_step_id: @implementation_try.change_request_step_id, username_of_implementor: @implementation_try.username_of_implementor } }
    assert_redirected_to implementation_try_url(@implementation_try)
  end

  test "should destroy implementation_try" do
    assert_difference('ImplementationTry.count', -1) do
      delete implementation_try_url(@implementation_try)
    end

    assert_redirected_to implementation_tries_url
  end
end
