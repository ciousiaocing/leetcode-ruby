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

    sum = map[s[0]]
    s.chars.each_cons(2) do |a, b|
      if map[a] < map[b]
        sum = sum - map[a]*2
      end

      sum = sum + map[b]
    end
    sum
end

# (1..10).each_cons(3) { |a| p a }
# # outputs below
# [1, 2, 3]
# [2, 3, 4]
# [3, 4, 5]
# [4, 5, 6]
# [5, 6, 7]
# [6, 7, 8]
# [7, 8, 9]
# [8, 9, 10]

p roman_to_int('XI')
p roman_to_int('IX')
p roman_to_int('DCXXI')
p roman_to_int("MCMXCVI")
