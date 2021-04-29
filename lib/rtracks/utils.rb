# library of reusable functions, like ActiveSupport

class Array
  def sum(start = 0)
    inject(start, &:+)
  end
end
