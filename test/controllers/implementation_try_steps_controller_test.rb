require 'test_helper'

class ImplementationTryStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @implementation_try_step = implementation_try_steps(:one)
  end

  test "should get index" do
    get implementation_try_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_implementation_try_step_url
    assert_response :success
  end

  test "should create implementation_try_step" do
    assert_difference('ImplementationTryStep.count') do
      post implementation_try_steps_url, params: { implementation_try_step: { change_request_step_try_id: @implementation_try_step.change_request_step_try_id, data: @implementation_try_step.data, sort_integer: @implementation_try_step.sort_integer } }
    end

    assert_redirected_to implementation_try_step_url(ImplementationTryStep.last)
  end

  test "should show implementation_try_step" do
    get implementation_try_step_url(@implementation_try_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_implementation_try_step_url(@implementation_try_step)
    assert_response :success
  end

  test "should update implementation_try_step" do
    patch implementation_try_step_url(@implementation_try_step), params: { implementation_try_step: { change_request_step_try_id: @implementation_try_step.change_request_step_try_id, data: @implementation_try_step.data, sort_integer: @implementation_try_step.sort_integer } }
    assert_redirected_to implementation_try_step_url(@implementation_try_step)
  end

  test "should destroy implementation_try_step" do
    assert_difference('ImplementationTryStep.count', -1) do
      delete implementation_try_step_url(@implementation_try_step)
    end

    assert_redirected_to implementation_try_steps_url
  end
end
