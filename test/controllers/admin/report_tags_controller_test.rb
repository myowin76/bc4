require 'test_helper'

class Admin::ReportTagsControllerTest < ActionController::TestCase
  setup do
    @admin_report_tag = admin_report_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_report_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_report_tag" do
    assert_difference('Admin::ReportTag.count') do
      post :create, admin_report_tag: { name: @admin_report_tag.name }
    end

    assert_redirected_to admin_report_tag_path(assigns(:admin_report_tag))
  end

  test "should show admin_report_tag" do
    get :show, id: @admin_report_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_report_tag
    assert_response :success
  end

  test "should update admin_report_tag" do
    patch :update, id: @admin_report_tag, admin_report_tag: { name: @admin_report_tag.name }
    assert_redirected_to admin_report_tag_path(assigns(:admin_report_tag))
  end

  test "should destroy admin_report_tag" do
    assert_difference('Admin::ReportTag.count', -1) do
      delete :destroy, id: @admin_report_tag
    end

    assert_redirected_to admin_report_tags_path
  end
end
