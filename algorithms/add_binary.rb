# https://leetcode.com/problems/add-binary/
#
# Given two binary strings, return their sum (also a binary string).
#
# For example,
# a = "11"
# b = "1"
# Return "100".

# Solution
def add_binary(a, b)
  a1 = a.to_i(2)
  b1 = b.to_i(2)
  sum = a1 + b1
  sum.to_s(2)
end
