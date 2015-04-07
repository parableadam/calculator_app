

#3. print computer's choice
#4. print result of game
#5. Ask to play again

#rules:

#define rock, paper, scissors and store in constant variable
#retreive user input 
#retreive computer input
#if user input and computer input == same, result is tie
#otherwise, if comp input is paper and user is rock, or if comp is rock and 
#user is scissors or if comp is scissors and user is paper the print 'you lose!'
#otherwise, print 'you win!'


    #^^ and vise versa 

#After conditionals and result of conditionals, print 

#"Would you like to play again?"

#CHOICES is a constant variable to be used with a .include? later on. 
#winning_result is a method to show the result of the game after it finishes.
def winning_result(victory)
  case victory.downcase
    when 'rock'
      puts "Rock crushes scissors!"
    when 'paper'
      puts "Paper wraps rock!"
    when 'scissors'
      puts "Scissors cuts paper"
  end
end

def did_player_lose?(computer_choice, player_choice)
  (computer_choice == 'rock' && player_choice == 'scissors') || (computer_choice == 
  'paper' && player_choice == 'rock') || (computer_choice == 'scissors' && player_choice ==
'paper')
end


CHOICES = %w(rock paper scissors)
puts "Welcome to Rock, Paper, Scissors! Let's play!"


#winning_result is a method to show the result of the game after it finishes.

#now begins actual code()

#player chooses
loop do
  
begin 
  puts "Pick one: rock, paper, or scissors"
  player_choice = gets.chomp.downcase
end until CHOICES.include?(player_choice)

#computer chooses 

computer_choice = CHOICES.sample

if computer_choice == player_choice
  puts "Tie game!"
elsif did_player_lose?(computer_choice, player_choice)
  winning_result(computer_choice)
  puts "You lose!"
else
  winning_result(player_choice)
  puts "You won!"
end

puts "Play again? Yes or no?"
break if 
  gets.chomp.downcase != "yes"
end

puts "Goodbye!"







