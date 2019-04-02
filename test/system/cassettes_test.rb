require "application_system_test_case"

class CassettesTest < ApplicationSystemTestCase
  setup do
    @cassette = cassettes(:one)
  end

  test "visiting the index" do
    visit cassettes_url
    assert_selector "h1", text: "Cassettes"
  end

  test "creating a Cassette" do
    visit cassettes_url
    click_on "New Cassette"

    fill_in "Formato", with: @cassette.formato_id
    fill_in "Movie", with: @cassette.movie_id
    click_on "Create Cassette"

    assert_text "Cassette was successfully created"
    click_on "Back"
  end

  test "updating a Cassette" do
    visit cassettes_url
    click_on "Edit", match: :first

    fill_in "Formato", with: @cassette.formato_id
    fill_in "Movie", with: @cassette.movie_id
    click_on "Update Cassette"

    assert_text "Cassette was successfully updated"
    click_on "Back"
  end

  test "destroying a Cassette" do
    visit cassettes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cassette was successfully destroyed"
  end
end
