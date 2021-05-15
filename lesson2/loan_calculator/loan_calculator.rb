#m = p * (j / (1 - (1 + j)**(-n)))

#need loan amount, APR, loan duration (months/years)
#calculate monthly interest rate, loan dur in months, monthly payment
inputs ={}
loop do
  puts "Please enter loan amount in dollars and cents: $ x.yz ."
  loan_amount = gets.chomp
  if loan_amount.to_f.round(loan_amount.to_s.length-1).to_s == loan_amount.to_s
    inputs['loan amount'] = loan_amount.to_f
    break
  end 
  puts "Incorrect format"
end

loop do
  puts "Please enter Annual Percentage Rate in percentage format: x.yz %"
  apr = gets.chomp
  if apr.to_f.round(apr.to_s.length-1).to_s == apr.to_s
    inputs['APR'] = apr.to_f
    inputs['monthly int rate'] = inputs['APR'] / 12
    break
  puts 'Incorrect format'
  end
end

loop do
  puts "Please enter loan duration in months."
  dur_loan = gets.chomp
  if dur_loan.to_i.to_s == dur_loan.to_s
    inputs['loan duration'] = dur_loan.to_i
    break
  puts 'Incorrect format'
  end
end

