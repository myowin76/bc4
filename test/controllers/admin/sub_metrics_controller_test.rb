require 'test_helper'

class Admin::SubMetricsControllerTest < ActionController::TestCase
  setup do
    @admin_sub_metric = admin_sub_metrics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_sub_metrics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_sub_metric" do
    assert_difference('Admin::SubMetric.count') do
      post :create, admin_sub_metric: { max_score: @admin_sub_metric.max_score, metric_id: @admin_sub_metric.metric_id, name: @admin_sub_metric.name, number: @admin_sub_metric.number }
    end

    assert_redirected_to admin_sub_metric_path(assigns(:admin_sub_metric))
  end

  test "should show admin_sub_metric" do
    get :show, id: @admin_sub_metric
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_sub_metric
    assert_response :success
  end

  test "should update admin_sub_metric" do
    patch :update, id: @admin_sub_metric, admin_sub_metric: { max_score: @admin_sub_metric.max_score, metric_id: @admin_sub_metric.metric_id, name: @admin_sub_metric.name, number: @admin_sub_metric.number }
    assert_redirected_to admin_sub_metric_path(assigns(:admin_sub_metric))
  end

  test "should destroy admin_sub_metric" do
    assert_difference('Admin::SubMetric.count', -1) do
      delete :destroy, id: @admin_sub_metric
    end

    assert_redirected_to admin_sub_metrics_path
  end
end
