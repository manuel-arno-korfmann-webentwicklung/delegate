require "application_system_test_case"

class ChangeRequestStepsTest < ApplicationSystemTestCase
  setup do
    @change_request_step = change_request_steps(:one)
  end

  test "visiting the index" do
    visit change_request_steps_url
    assert_selector "h1", text: "Change Request Steps"
  end

  test "creating a Change request step" do
    visit change_request_steps_url
    click_on "New Change Request Step"

    fill_in "Change request", with: @change_request_step.change_request_id
    fill_in "File url", with: @change_request_step.file_url
    fill_in "Todo", with: @change_request_step.todo
    click_on "Create Change request step"

    assert_text "Change request step was successfully created"
    click_on "Back"
  end

  test "updating a Change request step" do
    visit change_request_steps_url
    click_on "Edit", match: :first

    fill_in "Change request", with: @change_request_step.change_request_id
    fill_in "File url", with: @change_request_step.file_url
    fill_in "Todo", with: @change_request_step.todo
    click_on "Update Change request step"

    assert_text "Change request step was successfully updated"
    click_on "Back"
  end

  test "destroying a Change request step" do
    visit change_request_steps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change request step was successfully destroyed"
  end
end
