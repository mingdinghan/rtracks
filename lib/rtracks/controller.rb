require "erubis"
require "rtracks/file_model"

module Rtracks
  class Controller
    include Rtracks::Model

    attr_reader :env

    def initialize(env)
      @env = env
    end

    def instance_vars
      vars = {}
      instance_variables.each do |name|
        # strip away leading '@' for each instance variable
        vars[name[1..-1]] = instance_variable_get name.to_sym
      end
      vars
    end

    def controller_name
      klass = self.class
      klass = klass.to_s.gsub(/Controller$/, "")
      Rtracks.to_underscore(klass)
    end

    def render(view_name, locals = instance_vars)
      filename = File.join("app", "views", controller_name, "#{view_name}.html.erb")
      template = File.read(filename)

      eruby = Erubis::Eruby.new(template)
      eruby.result(locals.merge(env: env))
    end
  end
end
