# frozen_string_literal: true

require "rtracks/version"
require "rtracks/utils"
require "rtracks/routing"
require "rtracks/dependencies"

module Rtracks
  class Application
    def call(env)
      if env["PATH_INFO"] == '/favicon.ico'
        return [404, { 'Content-Type' => 'text/html' }, []]
      elsif env["PATH_INFO"] == '/'
        return [200, { 'Content-Type' => 'text/html' }, ["This is an empty homepage"]]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      begin
        text = controller.send(act)
      rescue
        return [500, { 'Content-Type' => 'text/html' }, ["The application encountered an error. Check the logs!"]]
      end

      [200, { 'Content-Type' => 'text/html' },
        [text]]
    end
  end

  class Controller
    attr_reader :env

    def initialize(env)
      @env = env
    end
  end
end
