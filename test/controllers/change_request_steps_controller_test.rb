require 'test_helper'

class ChangeRequestStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_request_step = change_request_steps(:one)
  end

  test "should get index" do
    get change_request_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_change_request_step_url
    assert_response :success
  end

  test "should create change_request_step" do
    assert_difference('ChangeRequestStep.count') do
      post change_request_steps_url, params: { change_request_step: { change_request_id: @change_request_step.change_request_id, file_url: @change_request_step.file_url, todo: @change_request_step.todo } }
    end

    assert_redirected_to change_request_step_url(ChangeRequestStep.last)
  end

  test "should show change_request_step" do
    get change_request_step_url(@change_request_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_change_request_step_url(@change_request_step)
    assert_response :success
  end

  test "should update change_request_step" do
    patch change_request_step_url(@change_request_step), params: { change_request_step: { change_request_id: @change_request_step.change_request_id, file_url: @change_request_step.file_url, todo: @change_request_step.todo } }
    assert_redirected_to change_request_step_url(@change_request_step)
  end

  test "should destroy change_request_step" do
    assert_difference('ChangeRequestStep.count', -1) do
      delete change_request_step_url(@change_request_step)
    end

    assert_redirected_to change_request_steps_url
  end
end
