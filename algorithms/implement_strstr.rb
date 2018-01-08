# https://leetcode.com/problems/implement-strstr/
#
# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
#
# Example 1:
#
# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:
#
# Input: haystack = "aaaaa", needle = "bba"
# Output: -1

# Solution
def str_str(haystack, needle)
  haystack.index(needle) || -1
end

p str_str("helloworld", "ow")
p str_str("helloworld", "lg")
