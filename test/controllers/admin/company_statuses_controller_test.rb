require 'test_helper'

class Admin::CompanyStatusesControllerTest < ActionController::TestCase
  setup do
    @admin_company_status = admin_company_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_company_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_company_status" do
    assert_difference('Admin::CompanyStatus.count') do
      post :create, admin_company_status: { name: @admin_company_status.name }
    end

    assert_redirected_to admin_company_status_path(assigns(:admin_company_status))
  end

  test "should show admin_company_status" do
    get :show, id: @admin_company_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_company_status
    assert_response :success
  end

  test "should update admin_company_status" do
    patch :update, id: @admin_company_status, admin_company_status: { name: @admin_company_status.name }
    assert_redirected_to admin_company_status_path(assigns(:admin_company_status))
  end

  test "should destroy admin_company_status" do
    assert_difference('Admin::CompanyStatus.count', -1) do
      delete :destroy, id: @admin_company_status
    end

    assert_redirected_to admin_company_statuses_path
  end
end
