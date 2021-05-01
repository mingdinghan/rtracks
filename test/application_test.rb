require_relative "test_helper"

class TestController < Rtracks::Controller
  def index
    "Hello!"
  end
end

class TestApp < Rtracks::Application
  def get_controller_and_action(env)
    [TestController, "index"]
  end
end

class RtracksAppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp.new
  end

  def test_request
    get "/example/anything"

    assert last_response.ok?
    body = last_response.body
    assert body["Hello"]
  end
end
