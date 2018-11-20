require "application_system_test_case"

class ContentsTest < ApplicationSystemTestCase
  setup do
    @content = contents(:one)
  end

  test "visiting the index" do
    visit contents_url
    assert_selector "h1", text: "Contents"
  end

  test "creating a Content" do
    visit contents_url
    click_on "New Content"

    fill_in "Address", with: @content.address
    fill_in "Format", with: @content.format
    fill_in "Movie File", with: @content.movie_file_id
    fill_in "Post At", with: @content.post_at
    fill_in "Received At", with: @content.received_at
    fill_in "Send At", with: @content.send_at
    fill_in "Sender", with: @content.sender
    fill_in "Text", with: @content.text
    fill_in "Title", with: @content.title
    fill_in "User", with: @content.user_id
    fill_in "Voice File", with: @content.voice_file_id
    click_on "Create Content"

    assert_text "Content was successfully created"
    click_on "Back"
  end

  test "updating a Content" do
    visit contents_url
    click_on "Edit", match: :first

    fill_in "Address", with: @content.address
    fill_in "Format", with: @content.format
    fill_in "Movie File", with: @content.movie_file_id
    fill_in "Post At", with: @content.post_at
    fill_in "Received At", with: @content.received_at
    fill_in "Send At", with: @content.send_at
    fill_in "Sender", with: @content.sender
    fill_in "Text", with: @content.text
    fill_in "Title", with: @content.title
    fill_in "User", with: @content.user_id
    fill_in "Voice File", with: @content.voice_file_id
    click_on "Update Content"

    assert_text "Content was successfully updated"
    click_on "Back"
  end

  test "destroying a Content" do
    visit contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Content was successfully destroyed"
  end
end
