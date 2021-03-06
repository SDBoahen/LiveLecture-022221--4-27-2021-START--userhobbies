require "test_helper"

class OutfitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get outfits_index_url
    assert_response :success
  end

  test "should get show" do
    get outfits_show_url
    assert_response :success
  end

  test "should get new" do
    get outfits_new_url
    assert_response :success
  end

  test "should get create" do
    get outfits_create_url
    assert_response :success
  end

  test "should get edit" do
    get outfits_edit_url
    assert_response :success
  end

  test "should get update" do
    get outfits_update_url
    assert_response :success
  end

  test "should get destroy" do
    get outfits_destroy_url
    assert_response :success
  end
end
