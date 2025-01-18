require "test_helper"

class SmallpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smallpost = smallposts(:one)
  end

  test "should get index" do
    get smallposts_url
    assert_response :success
  end

  test "should get new" do
    get new_smallpost_url
    assert_response :success
  end

  test "should create smallpost" do
    assert_difference("Smallpost.count") do
      post smallposts_url, params: { smallpost: { client_id: @smallpost.client_id, content: @smallpost.content } }
    end

    assert_redirected_to smallpost_url(Smallpost.last)
  end

  test "should show smallpost" do
    get smallpost_url(@smallpost)
    assert_response :success
  end

  test "should get edit" do
    get edit_smallpost_url(@smallpost)
    assert_response :success
  end

  test "should update smallpost" do
    patch smallpost_url(@smallpost), params: { smallpost: { client_id: @smallpost.client_id, content: @smallpost.content } }
    assert_redirected_to smallpost_url(@smallpost)
  end

  test "should destroy smallpost" do
    assert_difference("Smallpost.count", -1) do
      delete smallpost_url(@smallpost)
    end

    assert_redirected_to smallposts_url
  end
end
