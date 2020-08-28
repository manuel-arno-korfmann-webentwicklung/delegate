require "application_system_test_case"

class ImplementationTriesTest < ApplicationSystemTestCase
  setup do
    @implementation_try = implementation_tries(:one)
  end

  test "visiting the index" do
    visit implementation_tries_url
    assert_selector "h1", text: "Implementation Tries"
  end

  test "creating a Implementation try" do
    visit implementation_tries_url
    click_on "New Implementation Try"

    fill_in "Change request step", with: @implementation_try.change_request_step_id
    fill_in "Username of implementor", with: @implementation_try.username_of_implementor
    click_on "Create Implementation try"

    assert_text "Implementation try was successfully created"
    click_on "Back"
  end

  test "updating a Implementation try" do
    visit implementation_tries_url
    click_on "Edit", match: :first

    fill_in "Change request step", with: @implementation_try.change_request_step_id
    fill_in "Username of implementor", with: @implementation_try.username_of_implementor
    click_on "Update Implementation try"

    assert_text "Implementation try was successfully updated"
    click_on "Back"
  end

  test "destroying a Implementation try" do
    visit implementation_tries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Implementation try was successfully destroyed"
  end
end
