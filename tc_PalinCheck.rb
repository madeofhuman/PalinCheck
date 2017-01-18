require "test/unit"
require_relative 'PalinCheck'

class TestPalinCheck < Test::Unit::TestCase
 
  def test_palindrome_success
    assert_equal(false, PalinCheck.palindrome?("ijsuay"))
    assert_equal(true, PalinCheck.palindrome?("madam"))
    assert_equal(true, PalinCheck.palindrome?("r 789aceca987 r"))
  end

  def test_palindrome_failure
  	assert_equal
  end
 
end