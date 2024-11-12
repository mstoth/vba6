require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user can join a group" do
    g=groups(:one)
    assert_equal g.membercount, 0
    u=users(:one)
    g.add_member(u.id)
    assert_equal g.membercount, 1
  end
end
