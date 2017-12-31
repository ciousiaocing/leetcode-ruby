# Given a roman numeral, convert it to an integer.
#
# Input is guaranteed to be within the range from 1 to 3999.

# Solution
def roman_to_int(s)
  map = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
    }

    sum = 0
    s.chars.each_slice(2) do |a, b|
      if b == nil
        sum = sum + map[a]
      elsif map[a] < map[b]
        sum = sum - map[a] + map[b]
      else
        sum = sum + map[a] + map[b]
      end
    end
    sum
end

p roman_to_int('XI')
p roman_to_int('IX')
p roman_to_int('DCXXI')
