require "minitest/autorun"
require_relative "../models/string_comp"


class TestStrings < MiniTest::Test

  def setup
    @string1 = "Hello"
    @string2 = "Hello"
    @string3 = "hello"
    @string4 = "world"
    @string5 = "Hannah"
    @string6 = "read"
    @string7 = "dare"
  end

  def test_is_equal__true
    result = is_equal(@string1, @string2)
    assert_equal("Hello and hello are equal!", result)
  end

  def test_is_equal__true_case_difference
    result = is_equal(@string1, @string3)
    assert_equal("Hello and hello are equal!", result)
  end

  def test_is_equal__false
    result = is_equal(@string1, @string4)
    assert_equal("Hello and world are not equal!", result)
  end

  def test_is_palindrome__true
    result = is_palindrome(@string5)
    assert_equal("Hannah is a palindrome!", result)
  end

  def test_is_palindrome__false
    result = is_palindrome(@string4)
    assert_equal("World is not a palindrome!", result)
  end

  def test_is_isogram__true
    result = is_isogram(@string4)
    assert_equal("World is an isogram!", result)
  end

  def test_is_isogram__false
    result = is_isogram(@string1)
    assert_equal("Hello is not an isogram!", result)
  end

  def test_is_anagram__true
    result = is_anagram(@string6, @string7)
    assert_equal("Read and dare are anagrams of each other!", result)
  end

  def test_is_anagram__false
    result = is_anagram(@string1, @string4)
    assert_equal("Hello and world are not anagrams of each other!", result)
  end

end
