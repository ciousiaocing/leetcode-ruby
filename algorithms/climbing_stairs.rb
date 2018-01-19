# https://leetcode.com/problems/climbing-stairs/
#
# You are climbing a stair case. It takes n steps to reach to the top.
#
# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
#
# Note: Given n will be a positive integer.
#
#
# Example 1:
#
# Input: 2
# Output:  2
# Explanation:  There are two ways to climb to the top.
#
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:
#
# Input: 3
# Output:  3
# Explanation:  There are three ways to climb to the top.
#
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

# 費氏數列

# Solution
def climb_stairs(n)
  return 1 if n == 1

  n = n - 1
  v1 = 1
  v2 = 1
  v3 = nil
  n.times do
    v3 = v1 + v2
    v1 = v2
    v2 = v3
  end
  v3
end

p climb_stairs(1)
p climb_stairs(2)
p climb_stairs(3)
p climb_stairs(4)
