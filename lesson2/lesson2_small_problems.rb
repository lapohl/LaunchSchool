#EASY3
=begin
num_ints = 6
num_array = []
i = 0
num_collector = while i < num_ints
                  puts "Enter number:"
                  num_array << gets.chomp.to_i
                  i += 1
                end
num_array[0..-2].include?(num_array[-1]) ? puts("The last number #{num_array[-1]} appears in the first five numbers.") : puts("The last number #{num_array[-1]} is not in the first five numbers.")


def calculator()
  puts "Enter two numbers"
  int1 = gets.chomp.to_i
  int2 = gets.chomp.to_i

  puts "#{int1} + #{int2} = #{(int1 + int2)}."
  puts "#{int1} - #{int2} = #{(int1 - int2)}."
  puts "#{int1} * #{int2} = #{(int1 * int2)}."
  puts "#{int1} / #{int2} = #{(int1 / int2)}."
  puts "The remainder of #{int1} / #{int2} is #{(int1 % int2)}."
  puts "#{int1} to the #{int2} power  is #{(int1 ** int2)}."

end

calculator()


def word_counter(string)
  words = string.split(" ")
  words.map(&:size).reduce(:+)
end
puts "Enter words"
input = gets.chomp.to_s
puts "There are #{word_counter(input)} characters in \"#{input}\"."


puts "Enter words"
input = gets.chomp.to_s
puts "There are #{input.split(" ").map(&:size).reduce(:+)} characters in \"#{input}\"."


def multiply(arg1, arg2)
  arg1 * arg2
end

puts multiply([9,9], 3) 


def multiply(arg1, arg2)
  arg1 * arg2
end

def square(arg1)
  multiply(arg1, arg1)
end

puts square(5) == 25
puts square(-8) == 64


def oddities(input_array)
  input_array.map.with_index {|num, index| num if ((index % 2) == 0)}.compact 
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []
=end

def palindrome?(input_string)
  input_string.downcase == input_string.reverse.downcase
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true