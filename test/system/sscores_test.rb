require "application_system_test_case"

class SscoresTest < ApplicationSystemTestCase
  setup do
    @sscore = sscores(:one)
  end

  test "visiting the index" do
    visit sscores_url
    assert_selector "h1", text: "Sscores"
  end

  test "should create sscore" do
    visit sscores_url
    click_on "New sscore"

    fill_in "Grade", with: @sscore.grade
    fill_in "Point", with: @sscore.point
    fill_in "Student", with: @sscore.student_id
    fill_in "Subject", with: @sscore.subject
    click_on "Create Sscore"

    assert_text "Sscore was successfully created"
    click_on "Back"
  end

  test "should update Sscore" do
    visit sscore_url(@sscore)
    click_on "Edit this sscore", match: :first

    fill_in "Grade", with: @sscore.grade
    fill_in "Point", with: @sscore.point
    fill_in "Student", with: @sscore.student_id
    fill_in "Subject", with: @sscore.subject
    click_on "Update Sscore"

    assert_text "Sscore was successfully updated"
    click_on "Back"
  end

  test "should destroy Sscore" do
    visit sscore_url(@sscore)
    click_on "Destroy this sscore", match: :first

    assert_text "Sscore was successfully destroyed"
  end
end
