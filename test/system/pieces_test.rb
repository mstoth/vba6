require "application_system_test_case"

class PiecesTest < ApplicationSystemTestCase
  setup do
    user = users(:one)
    sign_in user

    @piece = pieces(:one)
    # @concert = concerts(:one)

  end

  test "visiting the index" do
    visit pieces_url
    assert_selector "h1", text: "Pieces"
  end

  test "should create piece" do
    visit pieces_url
    click_on "New piece"

    fill_in "Composer", with: @piece.composer
    fill_in "Genre", with: @piece.genre
    fill_in "Isbn", with: @piece.isbn
    fill_in "Length", with: @piece.length
    fill_in "Publisher", with: @piece.publisher
    fill_in "Title", with: @piece.title
    click_on "Create Piece"

    assert_text "Piece was successfully created"
    click_on "Back"
  end

  test "should update Piece" do
    visit piece_url(@piece)
    click_on "Edit this piece", match: :first

    fill_in "Composer", with: @piece.composer
    fill_in "Genre", with: @piece.genre
    fill_in "Isbn", with: @piece.isbn
    fill_in "Length", with: @piece.length
    fill_in "Publisher", with: @piece.publisher
    fill_in "Title", with: @piece.title
    click_on "Update Piece"

    assert_text "Piece was successfully updated"
    click_on "Back"
  end

  test "should destroy Piece" do
    visit piece_url(@piece)
    click_on "Destroy this piece", match: :first

    assert_text "Piece was successfully destroyed"
  end
end
