require "application_system_test_case"

class FamilymembersTest < ApplicationSystemTestCase
  setup do
    @familymember = familymembers(:one)
  end

  test "visiting the index" do
    visit familymembers_url
    assert_selector "h1", text: "Familymembers"
  end

  test "creating a Familymember" do
    visit familymembers_url
    click_on "New Familymember"

    fill_in "Address", with: @familymember.address
    fill_in "Age", with: @familymember.age
    fill_in "Gender", with: @familymember.gender
    fill_in "Name", with: @familymember.name
    click_on "Create Familymember"

    assert_text "Familymember was successfully created"
    click_on "Back"
  end

  test "updating a Familymember" do
    visit familymembers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @familymember.address
    fill_in "Age", with: @familymember.age
    fill_in "Gender", with: @familymember.gender
    fill_in "Name", with: @familymember.name
    click_on "Update Familymember"

    assert_text "Familymember was successfully updated"
    click_on "Back"
  end

  test "destroying a Familymember" do
    visit familymembers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Familymember was successfully destroyed"
  end
end
