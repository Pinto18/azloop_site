require 'test_helper'

class TeamMemberTest < ActiveSupport::TestCase
    def setup
        @member = TeamMember.new(name: "Example Person", bio: "Nothing", position: "Engineer")
    end
    
    test "should be valid" do
        assert @member.valid?
    end

    test "name should be present" do
        @member.name = "     "
        assert_not @member.valid?
    end

    test "bio should be present" do
        @member.bio = "     "
        assert_not @member.valid?
    end

    test "position should be present" do
        @member.position = "     "
        assert_not @member.valid?
    end
end
