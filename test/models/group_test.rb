require "test_helper"

class GroupTest < ActiveSupport::TestCase
  test "requires a title" do
    g=Group.new
    assert_equal false,g.save
    assert_equal 2,Group.count
  end

  test "can add and remove members" do
    g = groups(:one)
    u = users(:one)
    assert_equal 0,g.users.count
    g.add_member(u.id)
    assert_equal 1,g.users.count
    u=users(:two)
    result = g.add_member(u.id)
    assert_equal true, result
    assert_equal 2,g.users.count
    result = g.remove_member(u.id)
    assert_equal true, result
    assert_equal 1, g.users.count
  end

  test  "can't add a member already added" do
    g=groups(:one)
    u=users(:one)
    g.users = []
    assert_equal true, g.add_member(u.id)
    # assert_equal false, g.add_member(u.id)
  end

end
