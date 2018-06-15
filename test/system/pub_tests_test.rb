require "application_system_test_case"

class PubTestsTest < ApplicationSystemTestCase
  setup do
    @pub_test = pub_tests(:one)
  end

  test "visiting the index" do
    visit pub_tests_url
    assert_selector "h1", text: "Pub Tests"
  end

  test "creating a Pub test" do
    visit pub_tests_url
    click_on "New Pub Test"

    fill_in "Url", with: @pub_test.url
    click_on "Create Pub test"

    assert_text "Pub test was successfully created"
    click_on "Back"
  end

  test "updating a Pub test" do
    visit pub_tests_url
    click_on "Edit", match: :first

    fill_in "Url", with: @pub_test.url
    click_on "Update Pub test"

    assert_text "Pub test was successfully updated"
    click_on "Back"
  end

  test "destroying a Pub test" do
    visit pub_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pub test was successfully destroyed"
  end
end
