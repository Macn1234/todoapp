require 'test_helper'

class Welcome2ControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get welcome2_contact_url
    assert_response :success
  end

  test "should get abouut" do
    get welcome2_abouut_url
    assert_response :success
  end

end
