require 'test_helper'

class RegionGroupsControllerTest < ActionController::TestCase
  setup do
    @region_group = region_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:region_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create region_group" do
    assert_difference('RegionGroup.count') do
      post :create, region_group: { description: @region_group.description, name: @region_group.name, region_source_id: @region_group.region_source_id }
    end

    assert_redirected_to region_group_path(assigns(:region_group))
  end

  test "should show region_group" do
    get :show, id: @region_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @region_group
    assert_response :success
  end

  test "should update region_group" do
    patch :update, id: @region_group, region_group: { description: @region_group.description, name: @region_group.name, region_source_id: @region_group.region_source_id }
    assert_redirected_to region_group_path(assigns(:region_group))
  end

  test "should destroy region_group" do
    assert_difference('RegionGroup.count', -1) do
      delete :destroy, id: @region_group
    end

    assert_redirected_to region_groups_path
  end
end
