require 'test_helper'

class IndicatorsControllerTest < ActionController::TestCase
  setup do
    @indicator = indicators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:indicators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create indicator" do
    assert_difference('Indicator.count') do
      post :create, indicator: { indicator_number: @indicator.indicator_number, indicator_text: @indicator.indicator_text, indicator_type_id: @indicator.indicator_type_id, parent_id: @indicator.parent_id, prior_cycle: @indicator.prior_cycle, prior_question: @indicator.prior_question, question_number: @indicator.question_number, question_text: @indicator.question_text, record_type_id: @indicator.record_type_id }
    end

    assert_redirected_to indicator_path(assigns(:indicator))
  end

  test "should show indicator" do
    get :show, id: @indicator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @indicator
    assert_response :success
  end

  test "should update indicator" do
    patch :update, id: @indicator, indicator: { indicator_number: @indicator.indicator_number, indicator_text: @indicator.indicator_text, indicator_type_id: @indicator.indicator_type_id, parent_id: @indicator.parent_id, prior_cycle: @indicator.prior_cycle, prior_question: @indicator.prior_question, question_number: @indicator.question_number, question_text: @indicator.question_text, record_type_id: @indicator.record_type_id }
    assert_redirected_to indicator_path(assigns(:indicator))
  end

  test "should destroy indicator" do
    assert_difference('Indicator.count', -1) do
      delete :destroy, id: @indicator
    end

    assert_redirected_to indicators_path
  end
end
