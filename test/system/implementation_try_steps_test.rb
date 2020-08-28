require "application_system_test_case"

class ImplementationTryStepsTest < ApplicationSystemTestCase
  setup do
    @implementation_try_step = implementation_try_steps(:one)
  end

  test "visiting the index" do
    visit implementation_try_steps_url
    assert_selector "h1", text: "Implementation Try Steps"
  end

  test "creating a Implementation try step" do
    visit implementation_try_steps_url
    click_on "New Implementation Try Step"

    fill_in "Change request step try", with: @implementation_try_step.change_request_step_try_id
    fill_in "Data", with: @implementation_try_step.data
    fill_in "Sort integer", with: @implementation_try_step.sort_integer
    click_on "Create Implementation try step"

    assert_text "Implementation try step was successfully created"
    click_on "Back"
  end

  test "updating a Implementation try step" do
    visit implementation_try_steps_url
    click_on "Edit", match: :first

    fill_in "Change request step try", with: @implementation_try_step.change_request_step_try_id
    fill_in "Data", with: @implementation_try_step.data
    fill_in "Sort integer", with: @implementation_try_step.sort_integer
    click_on "Update Implementation try step"

    assert_text "Implementation try step was successfully updated"
    click_on "Back"
  end

  test "destroying a Implementation try step" do
    visit implementation_try_steps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Implementation try step was successfully destroyed"
  end
end
