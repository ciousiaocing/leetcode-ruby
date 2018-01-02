def longest_common_prefix(strs)
  # 當輸入空陣列時，返回空陣列
   return '' if strs.empty?

  # str等於取出陣列的第一項
  str, cnt = strs[0], 0
  str.chars.each_with_index do |ch, idx|
    # strs[1..-1]表示除了第一項以外的其他字串，有任何一組只要與第一項字母不相符，就break
    break if strs[1..-1].any? { |s| s[idx] != ch }
    cnt += 1
  end
  str.slice(0, cnt)
end

longest_common_prefix(["aab","aac","aabc"])

# chars
# "aab".chars => ["a", "a", "b"]

# each_with_index
# ["a", "a", "b"].each_with_index { |val, index| p "index: #{index} for #{val}"}
#  output => 
#  "index: 0 for a"
#  "index: 1 for a"
#  "index: 2 for b"

# any?
# 集合中只要有一个满足条件的就返回true
#
# [3, 8, 42].any? { |e| e > 10 } # returns true
# [3, 4].any? # returns true
# [].any? # returns false
# [nil].any? # returns false
# [false].any? # returns false
