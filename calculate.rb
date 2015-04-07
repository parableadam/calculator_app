def valid_operator?(operator)
  ["add", "subtract", "multiply", "divide"].include? operator.downcase
end

puts "Choose from the following operators: add, subtract, multiply, or divide"
operator = gets.chomp

#if operator != "add" && operator != "subtract" && operator != "multiply" && operator != "divide" 
while not valid_operator? operator
  puts "That is not a valid operator. Please choose a valid operator."
  operator = gets.chomp
end

#if valid_operator? operator (This is not need since I've invalidated the use of
#any user input other than what's defined as a valid_operator?  
  puts "What is the first number you'd like to use?"
#end

num1 = gets.chomp
  
  puts "What is the second number you'd like to use?"

num2 = gets.chomp

#if operator.downcase ==  'add'
  #result = num1.to_i + num2.to_i
#elsif operator.downcase == "subtract"
  #result = num1.to_i - num2.to_i
#elsif operator.downcase == "multiply"
  #result = num1 * num2
#elsif operator.downcase == "divide"
  #result = num1.to_f / num2.to_f
#end

result = 
  case operator.downcase
  when 'add'
    num1.to_i + num2.to_i
  when 'subtract'
    num1.to_i - num2.to_i
  when 'multiply'
    num1.to_i * num2.to_i
  when 'divide'
    num1.to_f / num2.to_f
  end



puts "Your result is #{result}"


  
  



