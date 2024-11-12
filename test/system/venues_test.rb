require "application_system_test_case"

class VenuesTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    sign_in @user

    @venue = venues(:one)
  end

  test "visiting the index" do
    visit venues_url
    assert_selector "h1", text: "Venues"
  end

  test "should create venue" do
    visit venues_url
    click_on "New venue"

    fill_in "Address", with: @venue.address
    fill_in "Contact", with: @venue.contact
    fill_in "Email", with: @venue.email
    fill_in "Name", with: @venue.name
    fill_in "Phone", with: @venue.phone
    click_on "Create Venue"

    assert_text "Venue was successfully created"
    click_on "Back"
  end

  test "should update Venue" do
    visit venue_url(@venue)
    click_on "Edit this venue", match: :first

    fill_in "Address", with: @venue.address
    fill_in "Contact", with: @venue.contact
    fill_in "Email", with: @venue.email
    fill_in "Name", with: @venue.name
    fill_in "Phone", with: @venue.phone
    fill_in "User", with: @user.id
    click_on "Update Venue"

    assert_text "Venue was successfully updated"
    click_on "Back"
  end

  test "should destroy Venue" do
    visit venue_url(@venue)
    click_on "Destroy this venue", match: :first

    assert_text "Venue was successfully destroyed"
  end
end
