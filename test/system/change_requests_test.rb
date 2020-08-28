require "application_system_test_case"

class ChangeRequestsTest < ApplicationSystemTestCase
  setup do
    @change_request = change_requests(:one)
  end

  test "visiting the index" do
    visit change_requests_url
    assert_selector "h1", text: "Change Requests"
  end

  test "creating a Change request" do
    visit change_requests_url
    click_on "New Change Request"

    fill_in "App", with: @change_request.app_id
    fill_in "Todo", with: @change_request.todo
    click_on "Create Change request"

    assert_text "Change request was successfully created"
    click_on "Back"
  end

  test "updating a Change request" do
    visit change_requests_url
    click_on "Edit", match: :first

    fill_in "App", with: @change_request.app_id
    fill_in "Todo", with: @change_request.todo
    click_on "Update Change request"

    assert_text "Change request was successfully updated"
    click_on "Back"
  end

  test "destroying a Change request" do
    visit change_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Change request was successfully destroyed"
  end
end
