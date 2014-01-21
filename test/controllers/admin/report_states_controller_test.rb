require 'test_helper'

class Admin::ReportStatesControllerTest < ActionController::TestCase
  setup do
    @admin_report_state = admin_report_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_report_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_report_state" do
    assert_difference('Admin::ReportState.count') do
      post :create, admin_report_state: { code: @admin_report_state.code, name: @admin_report_state.name }
    end

    assert_redirected_to admin_report_state_path(assigns(:admin_report_state))
  end

  test "should show admin_report_state" do
    get :show, id: @admin_report_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_report_state
    assert_response :success
  end

  test "should update admin_report_state" do
    patch :update, id: @admin_report_state, admin_report_state: { code: @admin_report_state.code, name: @admin_report_state.name }
    assert_redirected_to admin_report_state_path(assigns(:admin_report_state))
  end

  test "should destroy admin_report_state" do
    assert_difference('Admin::ReportState.count', -1) do
      delete :destroy, id: @admin_report_state
    end

    assert_redirected_to admin_report_states_path
  end
end
