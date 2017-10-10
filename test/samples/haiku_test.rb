require 'test_helper'
require File.expand_path('samples_ruby/haiku.rb')

class HaikuTest < ActiveSupport::TestCase

  test 'valid haiku' do
    valid_haiku = SampleHaiku.new("haikus are easy \n sometimes they do not make sense \n refrigerator")
    puts "This is haiku should be valid == true \n #{valid_haiku.paragraph}"
    assert valid_haiku.valid
  end

  test 'bad haiku' do
    invalid_haiku = SampleHaiku.new("Not a Haiku")
    puts "This is haiku should be valid == false \n #{invalid_haiku.paragraph}"
    assert_not_nil invalid_haiku.valid
    assert_not invalid_haiku.valid
  end
end
