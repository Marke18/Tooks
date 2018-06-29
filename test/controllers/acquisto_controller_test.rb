require 'test_helper'

class AcquistoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acquisto_index_url
    assert_response :success
  end

end
