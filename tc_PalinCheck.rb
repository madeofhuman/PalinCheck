require "test/unit"
require_relative 'PalinCheck'

class TestPalinCheck < Test::Unit::TestCase
 
  def test_palindrome_success
    assert_equal(false, PalinCheck.palindrome?("ijsuay"))
    assert_equal(true, PalinCheck.palindrome?("madam"))
    assert_equal(true, PalinCheck.palindrome?("r 789aceca987 r"))
  end

  def test_palindrome_failure
  	assert_equal(true, PalinCheck.palindrome?("ijsuay"), "Sigh! Nope!")
  end

  def test_longest_palindrome_success
  	assert_equal("madam", PalinCheck.longest_palindrome("almadam"))
  	assert_equal("dddd", PalinCheck.longest_palindrome("aabbbcddddefh9"))
  end
end