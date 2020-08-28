require "application_system_test_case"

class GceServersTest < ApplicationSystemTestCase
  setup do
    @gce_server = gce_servers(:one)
  end

  test "visiting the index" do
    visit gce_servers_url
    assert_selector "h1", text: "Gce Servers"
  end

  test "creating a Gce server" do
    visit gce_servers_url
    click_on "New Gce Server"

    fill_in "Gce server associable", with: @gce_server.gce_server_associable_id
    fill_in "Gce server associable type", with: @gce_server.gce_server_associable_type
    fill_in "Identity", with: @gce_server.identity
    fill_in "Zone", with: @gce_server.zone
    click_on "Create Gce server"

    assert_text "Gce server was successfully created"
    click_on "Back"
  end

  test "updating a Gce server" do
    visit gce_servers_url
    click_on "Edit", match: :first

    fill_in "Gce server associable", with: @gce_server.gce_server_associable_id
    fill_in "Gce server associable type", with: @gce_server.gce_server_associable_type
    fill_in "Identity", with: @gce_server.identity
    fill_in "Zone", with: @gce_server.zone
    click_on "Update Gce server"

    assert_text "Gce server was successfully updated"
    click_on "Back"
  end

  test "destroying a Gce server" do
    visit gce_servers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gce server was successfully destroyed"
  end
end
