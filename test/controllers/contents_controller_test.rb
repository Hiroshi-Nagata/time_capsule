require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content = contents(:one)
  end

  test "should get index" do
    get contents_url
    assert_response :success
  end

  test "should get new" do
    get new_content_url
    assert_response :success
  end

  test "should create content" do
    assert_difference('Content.count') do
      post contents_url, params: { content: { address: @content.address, format: @content.format, movie_file_id: @content.movie_file_id, post_at: @content.post_at, received_at: @content.received_at, send_at: @content.send_at, sender: @content.sender, text: @content.text, title: @content.title, user_id: @content.user_id, voice_file_id: @content.voice_file_id } }
    end

    assert_redirected_to content_url(Content.last)
  end

  test "should show content" do
    get content_url(@content)
    assert_response :success
  end

  test "should get edit" do
    get edit_content_url(@content)
    assert_response :success
  end

  test "should update content" do
    patch content_url(@content), params: { content: { address: @content.address, format: @content.format, movie_file_id: @content.movie_file_id, post_at: @content.post_at, received_at: @content.received_at, send_at: @content.send_at, sender: @content.sender, text: @content.text, title: @content.title, user_id: @content.user_id, voice_file_id: @content.voice_file_id } }
    assert_redirected_to content_url(@content)
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete content_url(@content)
    end

    assert_redirected_to contents_url
  end
end
