require "application_system_test_case"

class GridsTest < ApplicationSystemTestCase
  setup do
    @grid = grids(:one)
  end

  test "visiting the index" do
    visit grids_url
    assert_selector "h1", text: "Grids"
  end

  test "should create grid" do
    visit grids_url
    click_on "New grid"

    fill_in "Color", with: @grid.color
    fill_in "Make", with: @grid.make
    fill_in "Model", with: @grid.model
    click_on "Create Grid"

    assert_text "Grid was successfully created"
    click_on "Back"
  end

  test "should update Grid" do
    visit grid_url(@grid)
    click_on "Edit this grid", match: :first

    fill_in "Color", with: @grid.color
    fill_in "Make", with: @grid.make
    fill_in "Model", with: @grid.model
    click_on "Update Grid"

    assert_text "Grid was successfully updated"
    click_on "Back"
  end

  test "should destroy Grid" do
    visit grid_url(@grid)
    click_on "Destroy this grid", match: :first

    assert_text "Grid was successfully destroyed"
  end
end
