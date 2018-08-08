require 'minitest/autorun'
require '../lib/fizzbuzz.rb'

class FizzbuzzTest < Minitest::Test
    def test_fizzbuzz
        assert_equal '1', fizzbuzz(1)
        assert_equal 'Fizz', fizzbuzz(3)
        assert_equal '4', fizzbuzz(4)
        assert_equal 'Buzz', fizzbuzz(5)
        assert_equal 'FizzBuzz', fizzbuzz(15)
        assert_equal 'FizzBuzz', fizzbuzz(300)
    end
end