require 'test_helper'

test "should get index" do
  get :index
  assert_response :success
end
