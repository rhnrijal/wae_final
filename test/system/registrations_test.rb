require "application_system_test_case"

class RegistrationsTest < ApplicationSystemTestCase
  setup do
    @registration = registrations(:one)
  end

  test "visiting the index" do
    visit registrations_url
    assert_selector "h1", text: "Registrations"
  end

  test "creating a Registration" do
    visit registrations_url
    click_on "New Registration"

    fill_in "Course Offering", with: @registration.course_offering_id
    fill_in "Grade", with: @registration.grade
    fill_in "User", with: @registration.user_id
    click_on "Create Registration"

    assert_text "Registration was successfully created"
    click_on "Back"
  end

  test "updating a Registration" do
    visit registrations_url
    click_on "Edit", match: :first

    fill_in "Course Offering", with: @registration.course_offering_id
    fill_in "Grade", with: @registration.grade
    fill_in "User", with: @registration.user_id
    click_on "Update Registration"

    assert_text "Registration was successfully updated"
    click_on "Back"
  end

  test "destroying a Registration" do
    visit registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registration was successfully destroyed"
  end
end
