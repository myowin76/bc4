require 'test_helper'

class Admin::BctipsControllerTest < ActionController::TestCase
  setup do
    @admin_bctip = admin_bctips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_bctips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_bctip" do
    assert_difference('Admin::Bctip.count') do
      post :create, admin_bctip: { body: @admin_bctip.body, intro: @admin_bctip.intro, publish_from: @admin_bctip.publish_from, publish_to: @admin_bctip.publish_to, showon_admin_dashboard: @admin_bctip.showon_admin_dashboard, showon_wed_dashboard: @admin_bctip.showon_wed_dashboard, title: @admin_bctip.title }
    end

    assert_redirected_to admin_bctip_path(assigns(:admin_bctip))
  end

  test "should show admin_bctip" do
    get :show, id: @admin_bctip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_bctip
    assert_response :success
  end

  test "should update admin_bctip" do
    patch :update, id: @admin_bctip, admin_bctip: { body: @admin_bctip.body, intro: @admin_bctip.intro, publish_from: @admin_bctip.publish_from, publish_to: @admin_bctip.publish_to, showon_admin_dashboard: @admin_bctip.showon_admin_dashboard, showon_wed_dashboard: @admin_bctip.showon_wed_dashboard, title: @admin_bctip.title }
    assert_redirected_to admin_bctip_path(assigns(:admin_bctip))
  end

  test "should destroy admin_bctip" do
    assert_difference('Admin::Bctip.count', -1) do
      delete :destroy, id: @admin_bctip
    end

    assert_redirected_to admin_bctips_path
  end
end
