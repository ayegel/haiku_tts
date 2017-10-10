require 'samples/find_variable'

class ArrayDeleteTest < FindVariable
  def setup
    find_method('samples_ruby/array_delete.rb')
  end

  test 'remove [0]' do
    check_method([1, 2, 3], 0, [2, 3])
  end

  test 'remove [3]' do
    check_method([0, 1, 2, 3, 4, 5], 3, [0, 1, 2, 4, 5])
  end

  private def check_method(arr, val, answer)
    puts "When I delete arr[#{val}], the arry becomes #{answer}"
    @check_method += "array_delete(#{arr}, #{val})"
    super(answer)
  end
end
