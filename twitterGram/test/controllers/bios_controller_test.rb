require 'test_helper'

class BiosControllerTest < ActionDispatch::IntegrationTest
  test "should get idex" do
    get bios_idex_url
    assert_response :success
  end

  test "should get show" do
    get bios_show_url
    assert_response :success
  end

  test "should get new" do
    get bios_new_url
    assert_response :success
  end

end
