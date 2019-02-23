require 'test_helper'

class FairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fair = fairs(:one)
  end

  test "should get index" do
    get fairs_url
    assert_response :success
  end

  test "should get new" do
    get new_fair_url
    assert_response :success
  end

  test "should create fair" do
    assert_difference('Fair.count') do
      post fairs_url, params: { fair: { flyer: @fair.flyer, nombre: @fair.nombre } }
    end

    assert_redirected_to fair_url(Fair.last)
  end

  test "should show fair" do
    get fair_url(@fair)
    assert_response :success
  end

  test "should get edit" do
    get edit_fair_url(@fair)
    assert_response :success
  end

  test "should update fair" do
    patch fair_url(@fair), params: { fair: { flyer: @fair.flyer, nombre: @fair.nombre } }
    assert_redirected_to fair_url(@fair)
  end

  test "should destroy fair" do
    assert_difference('Fair.count', -1) do
      delete fair_url(@fair)
    end

    assert_redirected_to fairs_url
  end
end
