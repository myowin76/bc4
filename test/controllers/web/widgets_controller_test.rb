require 'test_helper'

class Web::WidgetsControllerTest < ActionController::TestCase
  setup do
    @web_widget = web_widgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_widgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_widget" do
    assert_difference('Web::Widget.count') do
      post :create, web_widget: { body: @web_widget.body, name: @web_widget.name }
    end

    assert_redirected_to web_widget_path(assigns(:web_widget))
  end

  test "should show web_widget" do
    get :show, id: @web_widget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_widget
    assert_response :success
  end

  test "should update web_widget" do
    patch :update, id: @web_widget, web_widget: { body: @web_widget.body, name: @web_widget.name }
    assert_redirected_to web_widget_path(assigns(:web_widget))
  end

  test "should destroy web_widget" do
    assert_difference('Web::Widget.count', -1) do
      delete :destroy, id: @web_widget
    end

    assert_redirected_to web_widgets_path
  end
end
