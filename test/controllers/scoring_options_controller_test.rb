require 'test_helper'

class ScoringOptionsControllerTest < ActionController::TestCase
  setup do
    @scoring_option = scoring_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scoring_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scoring_option" do
    assert_difference('ScoringOption.count') do
      post :create, scoring_option: { description: @scoring_option.description, indicator_id: @scoring_option.indicator_id, not_applicable: @scoring_option.not_applicable, value: @scoring_option.value }
    end

    assert_redirected_to scoring_option_path(assigns(:scoring_option))
  end

  test "should show scoring_option" do
    get :show, id: @scoring_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scoring_option
    assert_response :success
  end

  test "should update scoring_option" do
    patch :update, id: @scoring_option, scoring_option: { description: @scoring_option.description, indicator_id: @scoring_option.indicator_id, not_applicable: @scoring_option.not_applicable, value: @scoring_option.value }
    assert_redirected_to scoring_option_path(assigns(:scoring_option))
  end

  test "should destroy scoring_option" do
    assert_difference('ScoringOption.count', -1) do
      delete :destroy, id: @scoring_option
    end

    assert_redirected_to scoring_options_path
  end
end
