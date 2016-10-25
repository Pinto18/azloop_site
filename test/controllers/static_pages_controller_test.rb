require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
  end

  test "should get join" do
    get static_pages_join_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get sponsors" do
    get static_pages_sponsors_url
    assert_response :success
  end

  test "should get design" do
    get static_pages_design_url
    assert_response :success
  end

  test "should get team" do
    get static_pages_team_url
    assert_response :success
  end

  test "should get support" do
    get static_pages_support_url
    assert_response :success
  end

end
