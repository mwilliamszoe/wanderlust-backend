require 'test_helper'

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experience = experiences(:one)
  end

  test "should get index" do
    get experiences_url, as: :json
    assert_response :success
  end

  test "should create experience" do
    assert_difference('Experience.count') do
      post experiences_url, params: { experience: { country_id: @experience.country_id, mood: @experience.mood, title: @experience.title } }, as: :json
    end

    assert_response 201
  end

  test "should show experience" do
    get experience_url(@experience), as: :json
    assert_response :success
  end

  test "should update experience" do
    patch experience_url(@experience), params: { experience: { country_id: @experience.country_id, mood: @experience.mood, title: @experience.title } }, as: :json
    assert_response 200
  end

  test "should destroy experience" do
    assert_difference('Experience.count', -1) do
      delete experience_url(@experience), as: :json
    end

    assert_response 204
  end
end
