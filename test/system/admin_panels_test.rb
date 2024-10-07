require "application_system_test_case"

class AdminPanelsTest < ApplicationSystemTestCase
  setup do
    @admin_panel = admin_panels(:one)
  end

  test "visiting the index" do
    visit admin_panels_url
    assert_selector "h1", text: "Admin panels"
  end

  test "should create admin panel" do
    visit admin_panels_url
    click_on "New admin panel"

    fill_in "Visits", with: @admin_panel.visits_id
    click_on "Create Admin panel"

    assert_text "Admin panel was successfully created"
    click_on "Back"
  end

  test "should update Admin panel" do
    visit admin_panel_url(@admin_panel)
    click_on "Edit this admin panel", match: :first

    fill_in "Visits", with: @admin_panel.visits_id
    click_on "Update Admin panel"

    assert_text "Admin panel was successfully updated"
    click_on "Back"
  end

  test "should destroy Admin panel" do
    visit admin_panel_url(@admin_panel)
    click_on "Destroy this admin panel", match: :first

    assert_text "Admin panel was successfully destroyed"
  end
end
