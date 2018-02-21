require 'test_helper'

class CampaignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @campaign = campaigns(:one)
  end

  test "should get index" do
    get campaigns_url
    assert_response :success
  end

  test "should get new" do
    get new_campaign_url
    assert_response :success
  end

  test "should create campaign" do
    assert_difference('Campaign.count') do
      post campaigns_url, params: { campaign: { bid_amount_cents: @campaign.bid_amount_cents, daily_budget_cents: @campaign.daily_budget_cents, monthly_budget_cents: @campaign.monthly_budget_cents, name: @campaign.name, redirect_url: @campaign.redirect_url, status: @campaign.status, total_budget_cents: @campaign.total_budget_cents } }
    end

    assert_redirected_to campaign_url(Campaign.last)
  end

  test "should show campaign" do
    get campaign_url(@campaign)
    assert_response :success
  end

  test "should get edit" do
    get edit_campaign_url(@campaign)
    assert_response :success
  end

  test "should update campaign" do
    patch campaign_url(@campaign), params: { campaign: { bid_amount_cents: @campaign.bid_amount_cents, daily_budget_cents: @campaign.daily_budget_cents, monthly_budget_cents: @campaign.monthly_budget_cents, name: @campaign.name, redirect_url: @campaign.redirect_url, status: @campaign.status, total_budget_cents: @campaign.total_budget_cents } }
    assert_redirected_to campaign_url(@campaign)
  end

  test "should destroy campaign" do
    assert_difference('Campaign.count', -1) do
      delete campaign_url(@campaign)
    end

    assert_redirected_to campaigns_url
  end
end
