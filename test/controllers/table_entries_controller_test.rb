require "test_helper"

class TableEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get table_entries_index_url
    assert_response :success
  end

  test "should get upload" do
    get table_entries_upload_url
    assert_response :success
  end

  test "should get calculations" do
    get table_entries_calculations_url
    assert_response :success
  end
end
