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

  test "title must be unique" do
    @concert.save
    @new_concert = Concert.new(title: @concert.title, group_id: @concert.group_id, venue_id: @concert.venue_id)
    @new_concert.save
    assert_raises(ActiveRecord::RecordNotUnique) do
      @new_concert.save
    end
  end

  test "is not booked when created" do
    assert_false @concert.booked
  end
end
