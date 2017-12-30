# Determine whether an integer is a palindrome. Do this without extra space.
# palindrome:前後對稱。ex: 1221
# click to show spoilers.
#
# Some hints:
# Could negative integers be palindromes? (ie, -1)
#
# If you are thinking of converting the integer to string, note the restriction of using extra space.
#
# You could also try reversing an integer. However, if you have solved the problem "Reverse Integer", you know that the reversed integer might overflow. How would you handle such case?
#
# There is a more generic way of solving this problem.

# Solution
def is_palindrome(x)
  orig = x

  sum = 0
  while x > 0
    x, rem = x.divmod(10)
    sum = sum * 10 + rem
  end
  sum == orig
end

# 100.divmod(3) = [33, 1] = [商數, 餘數]

p is_palindrome(25)
p is_palindrome(2552)
