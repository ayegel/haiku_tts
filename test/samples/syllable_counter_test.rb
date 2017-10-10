require 'samples/find_variable'

class SyllableCounterTest < FindVariable
  def setup
    find_method('samples_ruby/syllable_counter.rb')
  end

  test 'one syllable' do
    check_method('one', 1)
  end

  test 'hello syllable' do
    check_method('hello', 2)
  end

  test 'beautiful syllable' do
    check_method('beautiful', 3)
  end

  test 'received syllable' do
    check_method('received', 2)
  end

  test 'spy syllable' do
    check_method('spy', 1)
  end

  test 'syllable syllable' do
    check_method('syllable', 3)
  end

  private def check_method(word, syllables)
    puts "word '#{word}' has #{syllables} syllable(s)"
    @check_method += "syllable_counter('#{word}')"
    super(syllables)
  end
end
