require "test_helper"

class SmallpostTest < ActiveSupport::TestCase
  test "should return in ascending order" do
    posts = Smallpost.content_order("asc")
    assert_equal [ smallposts(:three), smallposts(:two), smallposts(:one) ], posts.to_a
  end

  test "should return in descending order" do
    posts = Smallpost.content_order("desc")
    assert_equal [ smallposts(:one), smallposts(:two), smallposts(:three) ], posts.to_a
  end

  test "should return in chronological order" do
    posts = Smallpost.content_order("date")
    assert_equal [ smallposts(:two), smallposts(:three), smallposts(:one) ], posts.to_a
  end
end
