require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
    
    def setup
        @base_title = "AZ Hyperloop Team"
    end
    
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "AZ Hyperloop Team"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "News | #{@base_title}"
  end

  test "should get join" do
    get join_path
    assert_response :success
    assert_select "title", "Join Us | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get sponsors" do
    get sponsors_path
    assert_response :success
    assert_select "title", "Sponsors | #{@base_title}"
  end

  test "should get design" do
    get design_path
    assert_response :success
    assert_select "title", "Design | #{@base_title}"
  end

  test "should get team" do
    get team_path
    assert_response :success
    assert_select "title", "Team | #{@base_title}"
  end

  test "should get support" do
    get support_path
    assert_response :success
    assert_select "title", "Sponsor Us | #{@base_title}"
  end

end
