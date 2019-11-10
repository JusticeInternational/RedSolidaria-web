require "application_system_test_case"

class VersionsTest < ApplicationSystemTestCase
  setup do
    @version = versions(:one)
  end

  test "visiting the index" do
    visit versions_url
    assert_selector "h1", text: "Versions"
  end

  test "creating a Version" do
    visit versions_url
    click_on "New Version"

    fill_in "Created", with: @version.created
    fill_in "Major", with: @version.major
    fill_in "Minor", with: @version.minor
    fill_in "Patch", with: @version.patch
    fill_in "Value", with: @version.value
    click_on "Create Version"

    assert_text "Version was successfully created"
    click_on "Back"
  end

  test "updating a Version" do
    visit versions_url
    click_on "Edit", match: :first

    fill_in "Created", with: @version.created
    fill_in "Major", with: @version.major
    fill_in "Minor", with: @version.minor
    fill_in "Patch", with: @version.patch
    fill_in "Value", with: @version.value
    click_on "Update Version"

    assert_text "Version was successfully updated"
    click_on "Back"
  end

  test "destroying a Version" do
    visit versions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Version was successfully destroyed"
  end
end
