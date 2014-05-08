require 'test_helper'

class DownloadControllerTest < ActionController::TestCase
  test "should get anime" do
    get :anime
    assert_response :success
  end

end
