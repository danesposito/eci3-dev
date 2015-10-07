require 'test_helper'

class RegionCountriesControllerTest < ActionController::TestCase
  setup do
    @region_country = region_countries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:region_countries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create region_country" do
    assert_difference('RegionCountry.count') do
      post :create, region_country: { country_id: @region_country.country_id, region_id: @region_country.region_id }
    end

    assert_redirected_to region_country_path(assigns(:region_country))
  end

  test "should show region_country" do
    get :show, id: @region_country
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @region_country
    assert_response :success
  end

  test "should update region_country" do
    patch :update, id: @region_country, region_country: { country_id: @region_country.country_id, region_id: @region_country.region_id }
    assert_redirected_to region_country_path(assigns(:region_country))
  end

  test "should destroy region_country" do
    assert_difference('RegionCountry.count', -1) do
      delete :destroy, id: @region_country
    end

    assert_redirected_to region_countries_path
  end
end
