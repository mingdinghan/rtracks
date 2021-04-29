# frozen_string_literal: true

require_relative "rtracks/version"
require_relative "rtracks/utils"

module Rtracks
  class Application
    def call(env)
      [200, { 'Content-Type' => 'text/plain' },
        ["Hello, from Rtracks!"]]
    end
  end
end
