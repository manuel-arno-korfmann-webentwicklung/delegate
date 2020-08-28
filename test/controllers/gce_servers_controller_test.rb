require 'test_helper'

class GceServersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gce_server = gce_servers(:one)
  end

  test "should get index" do
    get gce_servers_url
    assert_response :success
  end

  test "should get new" do
    get new_gce_server_url
    assert_response :success
  end

  test "should create gce_server" do
    assert_difference('GceServer.count') do
      post gce_servers_url, params: { gce_server: { gce_server_associable_id: @gce_server.gce_server_associable_id, gce_server_associable_type: @gce_server.gce_server_associable_type, identity: @gce_server.identity, zone: @gce_server.zone } }
    end

    assert_redirected_to gce_server_url(GceServer.last)
  end

  test "should show gce_server" do
    get gce_server_url(@gce_server)
    assert_response :success
  end

  test "should get edit" do
    get edit_gce_server_url(@gce_server)
    assert_response :success
  end

  test "should update gce_server" do
    patch gce_server_url(@gce_server), params: { gce_server: { gce_server_associable_id: @gce_server.gce_server_associable_id, gce_server_associable_type: @gce_server.gce_server_associable_type, identity: @gce_server.identity, zone: @gce_server.zone } }
    assert_redirected_to gce_server_url(@gce_server)
  end

  test "should destroy gce_server" do
    assert_difference('GceServer.count', -1) do
      delete gce_server_url(@gce_server)
    end

    assert_redirected_to gce_servers_url
  end
end
