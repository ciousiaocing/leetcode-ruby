# https://leetcode.com/problems/search-insert-position/
#
# Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
#
# You may assume no duplicates in the array.
#
# Example 1:
#
# Input: [1,3,5,6], 5
# Output: 2
# Example 2:
#
# Input: [1,3,5,6], 2
# Output: 1
# Example 3:
#
# Input: [1,3,5,6], 7
# Output: 4
# Example 1:
#
# Input: [1,3,5,6], 0
# Output: 0

# Solution
def search_insert(nums, target)
  (0...nums.size).bsearch{ |i| nums[i] >= target } || nums.size
end

# (0...4) => 0-3
# bsearch
ary = [0, 4, 7, 10, 12]
ary.bsearch {|x| x >=   4 } #=> 4
ary.bsearch {|x| x >=   6 } #=> 7
ary.bsearch {|x| x >=  -1 } #=> 0
ary.bsearch {|x| x >= 100 } #=> nil

p search_insert([1,3,5,6], 9)
p search_insert([1,3,5,6], 0)
