require "test_helper"

class SscoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sscore = sscores(:one)
  end

  test "should get index" do
    get sscores_url
    assert_response :success
  end

  test "should get new" do
    get new_sscore_url
    assert_response :success
  end

  test "should create sscore" do
    assert_difference("Sscore.count") do
      post sscores_url, params: { sscore: { grade: @sscore.grade, point: @sscore.point, student_id: @sscore.student_id, subject: @sscore.subject } }
    end

    assert_redirected_to sscore_url(Sscore.last)
  end

  test "should show sscore" do
    get sscore_url(@sscore)
    assert_response :success
  end

  test "should get edit" do
    get edit_sscore_url(@sscore)
    assert_response :success
  end

  test "should update sscore" do
    patch sscore_url(@sscore), params: { sscore: { grade: @sscore.grade, point: @sscore.point, student_id: @sscore.student_id, subject: @sscore.subject } }
    assert_redirected_to sscore_url(@sscore)
  end

  test "should destroy sscore" do
    assert_difference("Sscore.count", -1) do
      delete sscore_url(@sscore)
    end

    assert_redirected_to sscores_url
  end
end
