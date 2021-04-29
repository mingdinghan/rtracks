require_relative "test_helper"

class TestApp < Rtracks::Application
end

class RtracksAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/"

    assert last_response.ok?
    body = last_response.body
    assert body["This is an empty homepage"]
  end
end
