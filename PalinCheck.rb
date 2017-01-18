class PalinCheck

# test a given string for palindromicity. Returns true or false
def self.palindrome?(string)
  # the starting index of the string
  m = 0
  # the terminating index of the string
  n = string.length - 1
  # ensure the start and terminating indexes do not intersect
  while m < n do
    # return false if the characters at indexes m and n don't match
    return false if string[m] != string[n]
    # move one index inward
    m += 1
    # move one index outward
    n -= 1
  end
  # return true if the characters match showing the string is a palindrome
  return true
end

# determine the largest substring within the string that is a palindrome
# If the string itself is a palindrome, then it will be the result.
# If not, the longest substring that is a palindrome will be returned.
def self.longest_palindrome(string)
  # check for empty strings
  return string if string == ""
  return null if string.empty?
  # terminating index of the string
  n = string.length-1
  # iterate over string and return longest palindrome substring
  (0..n).each do |i|
    (0..i).each do |j|
      # concatenate the string range for succesful palindrome check
      return string[j..(n-i+j)] if PalinCheck.palindrome?(string[j..(n-i+j)])
    end
  end
end

# prompt the user to input a string to run the palindrome check on
def self.prompt
  puts "Enter string to check for longest palindrome."
  # get the input
  input_string = gets.chomp

  # check if the input string is a palindrome and return it if it is
  is_palindrome = self.palindrome?(input_string)
  # if it's not, check for the longest palindromic substring
  if !is_palindrome
    puts "The largest substring palindrome of #{input_string} is:"
    puts self.longest_palindrome(input_string)
  else
    puts "The string entered is a palindrome."
  end
end

PalinCheck.prompt
end