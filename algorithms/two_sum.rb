# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
#
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
#
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
#
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

# Solution

def two_sum(nums, target)
  map = {}

  nums.each_with_index do |num, idx|
    return [map[target - num], idx] if map[target - num]

    map[num] = idx
  end
end

# try
a = two_sum([2, 7, 11, 15],17)
p a
