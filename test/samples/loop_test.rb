require 'samples/find_variable'

class LoopTest < FindVariable
  def setup
    find_method('samples_ruby/loop.rb')
  end

  test 'loop 3' do
    check_method(3, [1, 2, 3])
  end

  test 'loop 5' do
    check_method(5, [1, 2, 3, 4, 5])
  end

  private def check_method(num, answer)
    puts "#{num} will return #{answer}"
    @check_method += "looping(#{num})"
    super(answer)
  end
end
