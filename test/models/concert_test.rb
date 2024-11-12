require "test_helper"

class ConcertTest < ActiveSupport::TestCase
  setup do
    @concert = concerts(:one)
    @user = users(:one)
    sign_in(@user)
  end

  test "requires a title" do
    @concert.title = nil
    assert_not @concert.valid?
  end

  # test "the truth" do
  #   assert true
  # end
end
