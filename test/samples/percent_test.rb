require 'samples/find_variable'

class PercentTest < FindVariable
  def setup
    find_method('samples_ruby/percent.rb')
  end

  test '5/10' do
    check_method(5, 10, 0.5)
  end

  test '2/20' do
    check_method(2, 20, 0.1)
  end

  test '30/3' do
    check_method(30, 3, 10.0)
  end

  private def check_method(num1, num2, answer)
    puts "#{num1} / #{num2} = #{answer}"
    @check_method += "percent(#{num1}, #{num2})"
    super(answer)
  end
end
