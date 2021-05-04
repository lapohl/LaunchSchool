def calculator()
  ops = ['addition', 'subtraction', 'division', 'multiplication']
  input = ''
  loop do
    puts "Enter operation type"
    input = gets.chomp.to_s.downcase
    break if ops.include?(input)
    puts "Enter addition, subtraction, division, or multiplication."
  end

  puts "Enter two numbers"
  int1 = gets.chomp.to_i
  int2 = gets.chomp.to_i

  case input
  when 'addition'       then return (int1 + int2)
  when 'subraction'     then return (int1 - int2)
  when 'division'       then return (int1.to_f / int2.to_f)
  when 'multiplication' then return (int1 * int2)
  end

end

puts calculator()