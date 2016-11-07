require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
    
    test "layout links_home" do
        get root_path
        assert_template 'static_pages/home'
        assert_select "a[href=?]", root_path, count: 2
        assert_select "a[href=?]", design_path
        assert_select "a[href=?]", about_path, count: 2
        assert_select "a[href=?]", team_path
        assert_select "a[href=?]", sponsors_path
        assert_select "a[href=?]", news_path
        assert_select "a[href=?]", join_path
        assert_select "a[href=?]", contact_path
    end

    test "layout links_team" do
        get team_path
        assert_template 'static_pages/team'
        assert_select "a[href=?]", root_path, count: 2
        assert_select "a[href=?]", design_path
        assert_select "a[href=?]", about_path
        assert_select "a[href=?]", team_path
        assert_select "a[href=?]", sponsors_path, count: 2
        assert_select "a[href=?]", news_path
        assert_select "a[href=?]", join_path, count: 2
        assert_select "a[href=?]", contact_path
    end
end
