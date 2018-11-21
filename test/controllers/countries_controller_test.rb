require 'test_helper'

class CountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @country = countries(:one)
  end

  test "should get index" do
    get countries_url, as: :json
    assert_response :success
  end

  test "should create country" do
    assert_difference('Country.count') do
      post countries_url, params: { country: { experience_id: @country.experience_id, name: @country.name, region_id: @country.region_id } }, as: :json
    end

    assert_response 201
  end

  test "should show country" do
    get country_url(@country), as: :json
    assert_response :success
  end

  test "should update country" do
    patch country_url(@country), params: { country: { experience_id: @country.experience_id, name: @country.name, region_id: @country.region_id } }, as: :json
    assert_response 200
  end

  test "should destroy country" do
    assert_difference('Country.count', -1) do
      delete country_url(@country), as: :json
    end

    assert_response 204
  end
end
