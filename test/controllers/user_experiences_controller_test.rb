require 'test_helper'

class UserExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_experience = user_experiences(:one)
  end

  test "should get index" do
    get user_experiences_url, as: :json
    assert_response :success
  end

  test "should create user_experience" do
    assert_difference('UserExperience.count') do
      post user_experiences_url, params: { user_experience: { experience_id: @user_experience.experience_id, user_id: @user_experience.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_experience" do
    get user_experience_url(@user_experience), as: :json
    assert_response :success
  end

  test "should update user_experience" do
    patch user_experience_url(@user_experience), params: { user_experience: { experience_id: @user_experience.experience_id, user_id: @user_experience.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_experience" do
    assert_difference('UserExperience.count', -1) do
      delete user_experience_url(@user_experience), as: :json
    end

    assert_response 204
  end
end
