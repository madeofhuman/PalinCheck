require_relative "PalinCheck"
require "test/unit"

class TestPalinCheck < Test::Unit::TestCase
 
  def test_palindrome
    assert_equal(false, PalinCheck.palindrome("ijsuay") )
  end
 
end