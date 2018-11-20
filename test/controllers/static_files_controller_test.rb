require 'test_helper'

class StaticFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @static_file = static_files(:one)
  end

  test "should get index" do
    get static_files_url
    assert_response :success
  end

  test "should get new" do
    get new_static_file_url
    assert_response :success
  end

  test "should create static_file" do
    assert_difference('StaticFile.count') do
      post static_files_url, params: { static_file: { data: @static_file.data, file_name: @static_file.file_name, mine_type: @static_file.mine_type } }
    end

    assert_redirected_to static_file_url(StaticFile.last)
  end

  test "should show static_file" do
    get static_file_url(@static_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_static_file_url(@static_file)
    assert_response :success
  end

  test "should update static_file" do
    patch static_file_url(@static_file), params: { static_file: { data: @static_file.data, file_name: @static_file.file_name, mine_type: @static_file.mine_type } }
    assert_redirected_to static_file_url(@static_file)
  end

  test "should destroy static_file" do
    assert_difference('StaticFile.count', -1) do
      delete static_file_url(@static_file)
    end

    assert_redirected_to static_files_url
  end
end
