require 'test_helper'

class PaginaControllerTest < ActionDispatch::IntegrationTest
  test "should get info" do
    get pagina_info_url
    assert_response :success
  end

end
