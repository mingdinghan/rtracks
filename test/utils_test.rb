require_relative "test_helper"

class UtilsTest < Minitest::Test
  def test_array_sum
    assert_equal(10, [1, 2, 3, 4].sum)
  end
end
