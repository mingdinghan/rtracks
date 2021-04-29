module Rtracks
  class Application
    def get_controller_and_action(env)
      _, cont, act, after = env["PATH_INFO"].split('/', 4)
      cont = cont.capitalize
      cont += "Controller"

      [Object.const_get(cont), act]
    end
  end
end
