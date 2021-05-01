require "test_helper"

class FamilyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get family_index_url
    assert_response :success
  end
end
