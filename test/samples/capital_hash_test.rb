require 'samples/find_variable'

class CapitalHashTest < FindVariable
  def setup
    find_method('samples_ruby/capital_hash.rb')
  end

  test 'United Kingdom' do
    check_method('United Kingdom', 'London')
  end

  test 'Canada' do
    check_method('Canada', 'Ottawa')
  end

  private def check_method(country, answer)
    puts "#{country} has a capital of #{answer}"
    @check_method += "find_capital('#{country}')"
    super(answer)
  end
end
