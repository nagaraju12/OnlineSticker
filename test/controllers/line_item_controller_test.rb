require 'test_helper'

class LineItemControllerTest < ActionController::TestCase
  test "should get sticker:references" do
    get :sticker:references
    assert_response :success
  end

  test "should get cart:belongs_to" do
    get :cart:belongs_to
    assert_response :success
  end

end
