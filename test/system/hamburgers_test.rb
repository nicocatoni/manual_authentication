require "application_system_test_case"

class HamburgersTest < ApplicationSystemTestCase
  setup do
    @hamburger = hamburgers(:one)
  end

  test "visiting the index" do
    visit hamburgers_url
    assert_selector "h1", text: "Hamburgers"
  end

  test "creating a Hamburger" do
    visit hamburgers_url
    click_on "New Hamburger"

    fill_in "Description", with: @hamburger.description
    fill_in "Name", with: @hamburger.name
    fill_in "Price", with: @hamburger.price
    click_on "Create Hamburger"

    assert_text "Hamburger was successfully created"
    click_on "Back"
  end

  test "updating a Hamburger" do
    visit hamburgers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @hamburger.description
    fill_in "Name", with: @hamburger.name
    fill_in "Price", with: @hamburger.price
    click_on "Update Hamburger"

    assert_text "Hamburger was successfully updated"
    click_on "Back"
  end

  test "destroying a Hamburger" do
    visit hamburgers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hamburger was successfully destroyed"
  end
end
