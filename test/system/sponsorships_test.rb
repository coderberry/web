require "application_system_test_case"

class SponsorshipsTest < ApplicationSystemTestCase
  setup do
    @sponsorship = sponsorships(:one)
  end

  test "visiting the index" do
    visit sponsorships_url
    assert_selector "h1", text: "Sponsorships"
  end

  test "creating a Sponsorship" do
    visit sponsorships_url
    click_on "New Sponsorship"

    fill_in "Bid Amount Cents", with: @sponsorship.bid_amount_cents
    fill_in "Token", with: @sponsorship.token
    click_on "Create Sponsorship"

    assert_text "Sponsorship was successfully created"
    click_on "Back"
  end

  test "updating a Sponsorship" do
    visit sponsorships_url
    click_on "Edit", match: :first

    fill_in "Bid Amount Cents", with: @sponsorship.bid_amount_cents
    fill_in "Token", with: @sponsorship.token
    click_on "Update Sponsorship"

    assert_text "Sponsorship was successfully updated"
    click_on "Back"
  end

  test "destroying a Sponsorship" do
    visit sponsorships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sponsorship was successfully destroyed"
  end
end
