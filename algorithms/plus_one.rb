# https://leetcode.com/problems/plus-one/

# Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
#
# You may assume the integer do not contain any leading zero, except the number 0 itself.
#
# The digits are stored such that the most significant digit is at the head of the list.

# Solution
def plus_one(digits)
  arr = digits.join.to_i + 1
  arr.to_s.split("").map(&:to_i)
end
