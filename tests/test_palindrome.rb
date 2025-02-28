require "minitest/autorun"
require_relative "../palindrome"

class TestPalindrome < Minitest::Test
  def test_racecar_is_valid
    assert_equal true, palindrome?("racecar")
  end

  def test_apple_is_invalid
    assert_equal false, palindrome?("apple")
  end

  def test_panama_is_valid
    assert_equal true, palindrome?("A man, a plan, a canal: Panama")
  end

  def test_race_a_car_is_invalid
    assert_equal false, palindrome?("race a car")
  end

  def test_empty_string_is_valid
    assert_equal true, palindrome?(" ")
  end
end
