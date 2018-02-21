require "application_system_test_case"

class CampaignsTest < ApplicationSystemTestCase
  setup do
    @campaign = campaigns(:one)
  end

  test "visiting the index" do
    visit campaigns_url
    assert_selector "h1", text: "Campaigns"
  end

  test "creating a Campaign" do
    visit campaigns_url
    click_on "New Campaign"

    fill_in "Bid Amount Cents", with: @campaign.bid_amount_cents
    fill_in "Daily Budget Cents", with: @campaign.daily_budget_cents
    fill_in "Monthly Budget Cents", with: @campaign.monthly_budget_cents
    fill_in "Name", with: @campaign.name
    fill_in "Redirect Url", with: @campaign.redirect_url
    fill_in "Status", with: @campaign.status
    fill_in "Total Budget Cents", with: @campaign.total_budget_cents
    click_on "Create Campaign"

    assert_text "Campaign was successfully created"
    click_on "Back"
  end

  test "updating a Campaign" do
    visit campaigns_url
    click_on "Edit", match: :first

    fill_in "Bid Amount Cents", with: @campaign.bid_amount_cents
    fill_in "Daily Budget Cents", with: @campaign.daily_budget_cents
    fill_in "Monthly Budget Cents", with: @campaign.monthly_budget_cents
    fill_in "Name", with: @campaign.name
    fill_in "Redirect Url", with: @campaign.redirect_url
    fill_in "Status", with: @campaign.status
    fill_in "Total Budget Cents", with: @campaign.total_budget_cents
    click_on "Update Campaign"

    assert_text "Campaign was successfully updated"
    click_on "Back"
  end

  test "destroying a Campaign" do
    visit campaigns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Campaign was successfully destroyed"
  end
end
