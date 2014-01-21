require 'test_helper'

class Admin::CommentariesControllerTest < ActionController::TestCase
  setup do
    @admin_commentary = admin_commentaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_commentaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_commentary" do
    assert_difference('Admin::Commentary.count') do
      post :create, admin_commentary: { body: @admin_commentary.body, intro: @admin_commentary.intro, publish_from: @admin_commentary.publish_from, publish_to: @admin_commentary.publish_to, references: @admin_commentary.references, showon_admin_dashboard: @admin_commentary.showon_admin_dashboard, showon_wed_dashboard: @admin_commentary.showon_wed_dashboard, title: @admin_commentary.title }
    end

    assert_redirected_to admin_commentary_path(assigns(:admin_commentary))
  end

  test "should show admin_commentary" do
    get :show, id: @admin_commentary
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_commentary
    assert_response :success
  end

  test "should update admin_commentary" do
    patch :update, id: @admin_commentary, admin_commentary: { body: @admin_commentary.body, intro: @admin_commentary.intro, publish_from: @admin_commentary.publish_from, publish_to: @admin_commentary.publish_to, references: @admin_commentary.references, showon_admin_dashboard: @admin_commentary.showon_admin_dashboard, showon_wed_dashboard: @admin_commentary.showon_wed_dashboard, title: @admin_commentary.title }
    assert_redirected_to admin_commentary_path(assigns(:admin_commentary))
  end

  test "should destroy admin_commentary" do
    assert_difference('Admin::Commentary.count', -1) do
      delete :destroy, id: @admin_commentary
    end

    assert_redirected_to admin_commentaries_path
  end
end
