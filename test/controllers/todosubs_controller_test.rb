require 'test_helper'

class TodosubsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get todosubs_new_url
    assert_response :success
  end

  test "should get create" do
    get todosubs_create_url
    assert_response :success
  end

  test "should get edit" do
    get todosubs_edit_url
    assert_response :success
  end

  test "should get update" do
    get todosubs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get todosubs_destroy_url
    assert_response :success
  end

  test "should get show" do
    get todosubs_show_url
    assert_response :success
  end

  test "should get index" do
    get todosubs_index_url
    assert_response :success
  end

end
