require 'samples/find_variable'

class GradingTest < FindVariable
  def setup
    find_method('samples_ruby/grading.rb')
  end

  test 'grade A' do
    check_method(90, 'A')
  end

  test 'grade B' do
    check_method(89, 'B')
  end

  test 'grade C' do
    check_method(70, 'C')
  end

  test 'grade D' do
    check_method(69, 'D')
  end

  test 'grade F' do
    check_method(59, 'F')
  end

  test 'Wrong score' do
    check_method(101, 'Wrong score')
  end

  private def check_method(num, grade)
    puts "Number #{num} should return a grade of #{grade}"
    @check_method += "grading(#{num})"
    super(grade)
  end
end
