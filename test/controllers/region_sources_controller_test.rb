require 'test_helper'

class RegionSourcesControllerTest < ActionController::TestCase
  setup do
    @region_source = region_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:region_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create region_source" do
    assert_difference('RegionSource.count') do
      post :create, region_source: { description: @region_source.description, name: @region_source.name, website: @region_source.website }
    end

    assert_redirected_to region_source_path(assigns(:region_source))
  end

  test "should show region_source" do
    get :show, id: @region_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @region_source
    assert_response :success
  end

  test "should update region_source" do
    patch :update, id: @region_source, region_source: { description: @region_source.description, name: @region_source.name, website: @region_source.website }
    assert_redirected_to region_source_path(assigns(:region_source))
  end

  test "should destroy region_source" do
    assert_difference('RegionSource.count', -1) do
      delete :destroy, id: @region_source
    end

    assert_redirected_to region_sources_path
  end
end
