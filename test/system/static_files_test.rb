require "application_system_test_case"

class StaticFilesTest < ApplicationSystemTestCase
  setup do
    @static_file = static_files(:one)
  end

  test "visiting the index" do
    visit static_files_url
    assert_selector "h1", text: "Static Files"
  end

  test "creating a Static file" do
    visit static_files_url
    click_on "New Static File"

    fill_in "Data", with: @static_file.data
    fill_in "File Name", with: @static_file.file_name
    fill_in "Mine Type", with: @static_file.mine_type
    click_on "Create Static file"

    assert_text "Static file was successfully created"
    click_on "Back"
  end

  test "updating a Static file" do
    visit static_files_url
    click_on "Edit", match: :first

    fill_in "Data", with: @static_file.data
    fill_in "File Name", with: @static_file.file_name
    fill_in "Mine Type", with: @static_file.mine_type
    click_on "Update Static file"

    assert_text "Static file was successfully updated"
    click_on "Back"
  end

  test "destroying a Static file" do
    visit static_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Static file was successfully destroyed"
  end
end
