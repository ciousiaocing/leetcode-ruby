# Given a 32-bit signed integer, reverse digits of an integer.
#
# Example 1:
#
# Input: 123
# Output:  321
# Example 2:
#
# Input: -123
# Output: -321
# Example 3:
#
# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only hold integers within the 32-bit signed integer range. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
#
#
# Solution
def reverse(x)
  result =  x.to_s.split('').reverse
  if result[-1] == "-"
    negative = result.insert(0, result.delete_at(-1)).join.to_i
    if negative < - 2147483648
      0
    else
      negative
    end
  elsif result[0] === "0"
    result.shift
    result.join.to_i
  elsif result.join.to_i > 2147483647
    0
  else
    result.join.to_i
  end
end


p reverse(130)
p reverse(-123)
p reverse(1534236469)
p reverse(-2147483648)
