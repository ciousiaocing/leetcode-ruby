def count_and_say(n)
  str = '1'

  n -= 1
  n.times do
    char = str[0]
    count = 1
    newstr = ''

    # str[1..-1]從第二項取到最後一項比對
    str[1..-1].each_char do |ch|
      if ch == char
        count += 1
        # p "one"+ch
      else
        newstr << count.to_s << char
        char = ch
        count = 1
        # p "two"+newstr
      end
    end
    newstr << count.to_s << char
    # p "three"+newstr

    str = newstr
  end

  str
end

p count_and_say(2)
p count_and_say(4)
# p "end"
p count_and_say(5)
