def max_sub_array(nums)
  sum, subsum = nums[0], nums[0]

  1.upto(nums.size - 1) do |idx|
    subsum  = 0 if subsum < 0
    subsum += nums[idx]

    # 取最大值
    sum = subsum if sum < subsum
    p sum
  end
  sum
end

p max_sub_array([-2,1,-3,4,-1,2,1,-5,4])
