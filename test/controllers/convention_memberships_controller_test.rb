require 'test_helper'

class ConventionMembershipsControllerTest < ActionController::TestCase
  setup do
    @convention_membership = convention_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:convention_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create convention_membership" do
    assert_difference('ConventionMembership.count') do
      post :create, convention_membership: { convention_id: @convention_membership.convention_id, country_id: @convention_membership.country_id, date: @convention_membership.date, membership_type_id: @convention_membership.membership_type_id }
    end

    assert_redirected_to convention_membership_path(assigns(:convention_membership))
  end

  test "should show convention_membership" do
    get :show, id: @convention_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @convention_membership
    assert_response :success
  end

  test "should update convention_membership" do
    patch :update, id: @convention_membership, convention_membership: { convention_id: @convention_membership.convention_id, country_id: @convention_membership.country_id, date: @convention_membership.date, membership_type_id: @convention_membership.membership_type_id }
    assert_redirected_to convention_membership_path(assigns(:convention_membership))
  end

  test "should destroy convention_membership" do
    assert_difference('ConventionMembership.count', -1) do
      delete :destroy, id: @convention_membership
    end

    assert_redirected_to convention_memberships_path
  end
end
