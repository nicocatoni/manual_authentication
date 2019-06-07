require 'test_helper'

class HamburgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hamburger = hamburgers(:one)
  end

  test "should get index" do
    get hamburgers_url
    assert_response :success
  end

  test "should get new" do
    get new_hamburger_url
    assert_response :success
  end

  test "should create hamburger" do
    assert_difference('Hamburger.count') do
      post hamburgers_url, params: { hamburger: { description: @hamburger.description, name: @hamburger.name, price: @hamburger.price } }
    end

    assert_redirected_to hamburger_url(Hamburger.last)
  end

  test "should show hamburger" do
    get hamburger_url(@hamburger)
    assert_response :success
  end

  test "should get edit" do
    get edit_hamburger_url(@hamburger)
    assert_response :success
  end

  test "should update hamburger" do
    patch hamburger_url(@hamburger), params: { hamburger: { description: @hamburger.description, name: @hamburger.name, price: @hamburger.price } }
    assert_redirected_to hamburger_url(@hamburger)
  end

  test "should destroy hamburger" do
    assert_difference('Hamburger.count', -1) do
      delete hamburger_url(@hamburger)
    end

    assert_redirected_to hamburgers_url
  end
end
