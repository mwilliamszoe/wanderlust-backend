require "application_system_test_case"

class UserExperiencesTest < ApplicationSystemTestCase
  setup do
    @user_experience = user_experiences(:one)
  end

  test "visiting the index" do
    visit user_experiences_url
    assert_selector "h1", text: "User Experiences"
  end

  test "creating a User experience" do
    visit user_experiences_url
    click_on "New User Experience"

    fill_in "Experience", with: @user_experience.experience_id
    fill_in "User", with: @user_experience.user_id
    click_on "Create User experience"

    assert_text "User experience was successfully created"
    click_on "Back"
  end

  test "updating a User experience" do
    visit user_experiences_url
    click_on "Edit", match: :first

    fill_in "Experience", with: @user_experience.experience_id
    fill_in "User", with: @user_experience.user_id
    click_on "Update User experience"

    assert_text "User experience was successfully updated"
    click_on "Back"
  end

  test "destroying a User experience" do
    visit user_experiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User experience was successfully destroyed"
  end
end
