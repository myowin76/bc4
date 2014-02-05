require 'test_helper'

class Admin::SystemEmailsControllerTest < ActionController::TestCase
  setup do
    @admin_system_email = admin_system_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_system_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_system_email" do
    assert_difference('Admin::SystemEmail.count') do
      post :create, admin_system_email: { body: @admin_system_email.body, from: @admin_system_email.from, name: @admin_system_email.name, subject: @admin_system_email.subject }
    end

    assert_redirected_to admin_system_email_path(assigns(:admin_system_email))
  end

  test "should show admin_system_email" do
    get :show, id: @admin_system_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_system_email
    assert_response :success
  end

  test "should update admin_system_email" do
    patch :update, id: @admin_system_email, admin_system_email: { body: @admin_system_email.body, from: @admin_system_email.from, name: @admin_system_email.name, subject: @admin_system_email.subject }
    assert_redirected_to admin_system_email_path(assigns(:admin_system_email))
  end

  test "should destroy admin_system_email" do
    assert_difference('Admin::SystemEmail.count', -1) do
      delete :destroy, id: @admin_system_email
    end

    assert_redirected_to admin_system_emails_path
  end
end
