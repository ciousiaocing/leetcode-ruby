# https://leetcode.com/problems/sqrtx/
#
# Implement int sqrt(int x).
#
# Compute and return the square root of x.
#
# x is guaranteed to be a non-negative integer.
#
#
# Example 1:
#
# Input: 4
# Output: 2
# Example 2:
#
# Input: 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since we want to return an integer, the decimal part will be truncated.
#
# 方法I：二分法

# Solution1
def my_sqrt(x)
  low, high, mid = 0, x, x / 2
    while low <= high do
      if mid * mid > x
          high = mid - 1
      else
          low = mid + 1
      end
      mid = (low + high) / 2
    end
  return mid
end

# 方法II：牛顿迭代
# 参考博文：牛顿迭代法快速寻找平方根 （http://www.matrix67.com/blog/archives/361）
#
# 令f(t) = t2 - x，则sqrt(x)等价于求f(t)的根
#
# 初始假设答案t = x
#
# 每一次迭代，令t = t / 2 + x / (2 * t)
#
# 新的t值为当前t值对应的函数切线与x轴的交点横坐标，这就是牛顿迭代的本质

# Solution2
def my_sqrt(x)
  r = x
  while ( r * r > x) do
    r = ( r + x / r)/2
  end
  r
end
