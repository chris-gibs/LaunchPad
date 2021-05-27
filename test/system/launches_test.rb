require "application_system_test_case"

class LaunchesTest < ApplicationSystemTestCase
  setup do
    @launch = launches(:one)
  end

  test "visiting the index" do
    visit launches_url
    assert_selector "h1", text: "Launches"
  end

  test "creating a Launch" do
    visit launches_url
    click_on "New Launch"

    fill_in "Launch date", with: @launch.launch_date
    fill_in "Organisation", with: @launch.organisation_id
    fill_in "Price", with: @launch.price
    fill_in "Type", with: @launch.type
    click_on "Create Launch"

    assert_text "Launch was successfully created"
    click_on "Back"
  end

  test "updating a Launch" do
    visit launches_url
    click_on "Edit", match: :first

    fill_in "Launch date", with: @launch.launch_date
    fill_in "Organisation", with: @launch.organisation_id
    fill_in "Price", with: @launch.price
    fill_in "Type", with: @launch.type
    click_on "Update Launch"

    assert_text "Launch was successfully updated"
    click_on "Back"
  end

  test "destroying a Launch" do
    visit launches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Launch was successfully destroyed"
  end
end
