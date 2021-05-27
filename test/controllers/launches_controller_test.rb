require "test_helper"

class LaunchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @launch = launches(:one)
  end

  test "should get index" do
    get launches_url
    assert_response :success
  end

  test "should get new" do
    get new_launch_url
    assert_response :success
  end

  test "should create launch" do
    assert_difference('Launch.count') do
      post launches_url, params: { launch: { launch_date: @launch.launch_date, organisation_id: @launch.organisation_id, price: @launch.price, type: @launch.type } }
    end

    assert_redirected_to launch_url(Launch.last)
  end

  test "should show launch" do
    get launch_url(@launch)
    assert_response :success
  end

  test "should get edit" do
    get edit_launch_url(@launch)
    assert_response :success
  end

  test "should update launch" do
    patch launch_url(@launch), params: { launch: { launch_date: @launch.launch_date, organisation_id: @launch.organisation_id, price: @launch.price, type: @launch.type } }
    assert_redirected_to launch_url(@launch)
  end

  test "should destroy launch" do
    assert_difference('Launch.count', -1) do
      delete launch_url(@launch)
    end

    assert_redirected_to launches_url
  end
end
