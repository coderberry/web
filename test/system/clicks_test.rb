require "application_system_test_case"

class ClicksTest < ApplicationSystemTestCase
  setup do
    @click = clicks(:one)
  end

  test "visiting the index" do
    visit clicks_url
    assert_selector "h1", text: "Clicks"
  end

  test "creating a Click" do
    visit clicks_url
    click_on "New Click"

    fill_in "Ip", with: @click.ip
    click_on "Create Click"

    assert_text "Click was successfully created"
    click_on "Back"
  end

  test "updating a Click" do
    visit clicks_url
    click_on "Edit", match: :first

    fill_in "Ip", with: @click.ip
    click_on "Update Click"

    assert_text "Click was successfully updated"
    click_on "Back"
  end

  test "destroying a Click" do
    visit clicks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Click was successfully destroyed"
  end
end
