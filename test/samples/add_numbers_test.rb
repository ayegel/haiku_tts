require 'samples/find_variable'

class AddNumbersTest < FindVariable
  def setup
    find_method('samples_ruby/add_numbers.rb')
  end

  test '3' do
    puts "1 + 2 = 3"
    a = check_method(1, 2, 3)
  end

  test '-12' do
    puts "-10 + -2 = -12"
    a = check_method(-10, -2, -12)
  end

  test 'not a number' do
    puts '"this is a string" + 1 = 1'
    a = check_method('"this is a string"', 1, 1)
  end

  private def check_method(first, second, total)
    @check_method += "add_numbers(#{first}, #{second})"
    super(total)
  end
end
