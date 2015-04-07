def valid_operator?(operator)
  ["add", "subtract", "multiply", "divide"].include? operator
end

puts "Choose from the following operators: add, subtract, dultiply, or divide"
operator = gets.chomp

#if operator != "add" && operator != "subtract" && operator != "multiply" && operator != "divide" 
while not valid_operator? operator
  puts "That is not a valid operator. Please choose a valid operator."
  operator = gets.chomp
end

if valid_operator? operator
  puts "What is the first number you'd like to use?"
end

num1 = gets.chomp
  
  puts "What is the second number you'd like to use?"

num2 = gets.chomp

if operator.downcase ==  'add'
  result = num1.to_i + num2.to_i
elsif operator.downcase == "subtract"
  result = num1.to_i - num2.to_i
elsif operator.downcase == "multiply"
  result = num1 * num2
elsif operator.downcase == "divide"
  result = num1.to_f / num2.to_f
end



puts "Your result is #{result}"



  



