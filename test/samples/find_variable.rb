require 'test_helper'

class FindVariable < ActiveSupport::TestCase
  private def find_method(path)
    @check_method = ''
    File.foreach(path) do |x|
      @check_method += x
    end
  end

  private def check_method(compare_value)
    a = eval @check_method
    assert_equal compare_value, a
  end
end
