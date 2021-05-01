require "test_helper"

class FamilymembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @familymember = familymembers(:one)
  end

  test "should get index" do
    get familymembers_url
    assert_response :success
  end

  test "should get new" do
    get new_familymember_url
    assert_response :success
  end

  test "should create familymember" do
    assert_difference('Familymember.count') do
      post familymembers_url, params: { familymember: { address: @familymember.address, age: @familymember.age, gender: @familymember.gender, name: @familymember.name } }
    end

    assert_redirected_to familymember_url(Familymember.last)
  end

  test "should show familymember" do
    get familymember_url(@familymember)
    assert_response :success
  end

  test "should get edit" do
    get edit_familymember_url(@familymember)
    assert_response :success
  end

  test "should update familymember" do
    patch familymember_url(@familymember), params: { familymember: { address: @familymember.address, age: @familymember.age, gender: @familymember.gender, name: @familymember.name } }
    assert_redirected_to familymember_url(@familymember)
  end

  test "should destroy familymember" do
    assert_difference('Familymember.count', -1) do
      delete familymember_url(@familymember)
    end

    assert_redirected_to familymembers_url
  end
end
