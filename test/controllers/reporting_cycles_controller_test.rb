require 'test_helper'

class ReportingCyclesControllerTest < ActionController::TestCase
  setup do
    @reporting_cycle = reporting_cycles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reporting_cycles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reporting_cycle" do
    assert_difference('ReportingCycle.count') do
      post :create, reporting_cycle: { convention_id: @reporting_cycle.convention_id, date: @reporting_cycle.date, description: @reporting_cycle.description, name: @reporting_cycle.name }
    end

    assert_redirected_to reporting_cycle_path(assigns(:reporting_cycle))
  end

  test "should show reporting_cycle" do
    get :show, id: @reporting_cycle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reporting_cycle
    assert_response :success
  end

  test "should update reporting_cycle" do
    patch :update, id: @reporting_cycle, reporting_cycle: { convention_id: @reporting_cycle.convention_id, date: @reporting_cycle.date, description: @reporting_cycle.description, name: @reporting_cycle.name }
    assert_redirected_to reporting_cycle_path(assigns(:reporting_cycle))
  end

  test "should destroy reporting_cycle" do
    assert_difference('ReportingCycle.count', -1) do
      delete :destroy, id: @reporting_cycle
    end

    assert_redirected_to reporting_cycles_path
  end
end
