require 'test_helper'

class CarrelloControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carrello_index_url
    assert_response :success
  end

end
