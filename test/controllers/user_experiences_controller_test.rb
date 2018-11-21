require 'test_helper'

class UserExperiencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_experience = user_experiences(:one)
  end

  test "should get index" do
    get user_experiences_url
    assert_response :success
  end

  test "should get new" do
    get new_user_experience_url
    assert_response :success
  end

  test "should create user_experience" do
    assert_difference('UserExperience.count') do
      post user_experiences_url, params: { user_experience: { experience_id: @user_experience.experience_id, user_id: @user_experience.user_id } }
    end

    assert_redirected_to user_experience_url(UserExperience.last)
  end

  test "should show user_experience" do
    get user_experience_url(@user_experience)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_experience_url(@user_experience)
    assert_response :success
  end

  test "should update user_experience" do
    patch user_experience_url(@user_experience), params: { user_experience: { experience_id: @user_experience.experience_id, user_id: @user_experience.user_id } }
    assert_redirected_to user_experience_url(@user_experience)
  end

  test "should destroy user_experience" do
    assert_difference('UserExperience.count', -1) do
      delete user_experience_url(@user_experience)
    end

    assert_redirected_to user_experiences_url
  end
end
