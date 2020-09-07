require 'test_helper'

class TimesheetControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get timesheet_new_url
    assert_response :success
  end

  test "should get edit" do
    get timesheet_edit_url
    assert_response :success
  end

  test "should get show" do
    get timesheet_show_url
    assert_response :success
  end

  test "should get index" do
    get timesheet_index_url
    assert_response :success
  end

end
