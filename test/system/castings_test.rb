require "application_system_test_case"

class CastingsTest < ApplicationSystemTestCase
  setup do
    @casting = castings(:one)
  end

  test "visiting the index" do
    visit castings_url
    assert_selector "h1", text: "Castings"
  end

  test "creating a Casting" do
    visit castings_url
    click_on "New Casting"

    fill_in "Actor", with: @casting.actor_id
    fill_in "Movie", with: @casting.movie_id
    click_on "Create Casting"

    assert_text "Casting was successfully created"
    click_on "Back"
  end

  test "updating a Casting" do
    visit castings_url
    click_on "Edit", match: :first

    fill_in "Actor", with: @casting.actor_id
    fill_in "Movie", with: @casting.movie_id
    click_on "Update Casting"

    assert_text "Casting was successfully updated"
    click_on "Back"
  end

  test "destroying a Casting" do
    visit castings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Casting was successfully destroyed"
  end
end
