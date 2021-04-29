# library of reusable functions, like ActiveSupport

class Array
  def sum(start = 0)
    inject(start, &:+)
  end
end

module Rtracks
  def self.to_underscore(string)
    # convert CamelCase to snake_case
    string.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end
