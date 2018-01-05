# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
#
# The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.

# Solution
def is_valid(s)
  stack = []

  s.each_char do |ch|
    case ch
    when '(', '{', '['
      # when '(' stack.push(ch) = ["("]
      stack.push(ch)
    when ')'
      # stack.pop 等於取出陣列最後一項
      return false if stack.pop != '('
    when '}'
      return false if stack.pop != '{'
    when ']'
      return false if stack.pop != '['
    else
      nil
    end
  end

  # when s = "(", "[", "{" ，才能回傳false
  stack.empty?
end

p is_valid("([{]})")
p is_valid("(")
