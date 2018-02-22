require "test_helper"

class ClicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @click = clicks(:one)
  end

  test "should get index" do
    get clicks_url
    assert_response :success
  end

  test "should get new" do
    get new_click_url
    assert_response :success
  end

  test "should create click" do
    assert_difference("Click.count") do
      post clicks_url, params: { click: { ip: @click.ip } }
    end

    assert_redirected_to click_url(Click.last)
  end

  test "should show click" do
    get click_url(@click)
    assert_response :success
  end

  test "should get edit" do
    get edit_click_url(@click)
    assert_response :success
  end

  test "should update click" do
    patch click_url(@click), params: { click: { ip: @click.ip } }
    assert_redirected_to click_url(@click)
  end

  test "should destroy click" do
    assert_difference("Click.count", -1) do
      delete click_url(@click)
    end

    assert_redirected_to clicks_url
  end
end
