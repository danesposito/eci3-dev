require 'test_helper'

class ClusterMembersControllerTest < ActionController::TestCase
  setup do
    @cluster_member = cluster_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cluster_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cluster_member" do
    assert_difference('ClusterMember.count') do
      post :create, cluster_member: { cluster_id: @cluster_member.cluster_id, convention_id: @cluster_member.convention_id }
    end

    assert_redirected_to cluster_member_path(assigns(:cluster_member))
  end

  test "should show cluster_member" do
    get :show, id: @cluster_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cluster_member
    assert_response :success
  end

  test "should update cluster_member" do
    patch :update, id: @cluster_member, cluster_member: { cluster_id: @cluster_member.cluster_id, convention_id: @cluster_member.convention_id }
    assert_redirected_to cluster_member_path(assigns(:cluster_member))
  end

  test "should destroy cluster_member" do
    assert_difference('ClusterMember.count', -1) do
      delete :destroy, id: @cluster_member
    end

    assert_redirected_to cluster_members_path
  end
end
