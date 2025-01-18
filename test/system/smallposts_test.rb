require "application_system_test_case"

class SmallpostsTest < ApplicationSystemTestCase
  setup do
    @smallpost = smallposts(:one)
  end

  test "visiting the index" do
    visit smallposts_url
    assert_selector "h1", text: "Smallposts"
  end

  test "should create smallpost" do
    visit smallposts_url
    click_on "New smallpost"

    fill_in "Client", with: @smallpost.client_id
    fill_in "Content", with: @smallpost.content
    click_on "Create Smallpost"

    assert_text "Smallpost was successfully created"
    click_on "Back"
  end

  test "should update Smallpost" do
    visit smallpost_url(@smallpost)
    click_on "Edit this smallpost", match: :first

    fill_in "Client", with: @smallpost.client_id
    fill_in "Content", with: @smallpost.content
    click_on "Update Smallpost"

    assert_text "Smallpost was successfully updated"
    click_on "Back"
  end

  test "should destroy Smallpost" do
    visit smallpost_url(@smallpost)
    click_on "Destroy this smallpost", match: :first

    assert_text "Smallpost was successfully destroyed"
  end
end
