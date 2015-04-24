

#def deal_hand
  #cards = ["2", "3", "4", "5", "6", "7", "8", "9", "jack", "queen", "king", "ace"]
  	#cards.each do |card|
  		#cards.sample
  	#end
#end

def calculate_total(cards)
  arr = cards.map{|e| e[0] }

  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0
      total += 10
    else
      total += value.to_i
    end
  end

  arr.select{|e| e == "A"}.count.times do
   total -= 10 if total > 21
  end
    total
end

#def you_bust(cards)
  #ace_count = arr.select{|e| e == "A"}.count.times
  #if ace_count == 4 && total > 21
    #puts "You bust!"
#end

puts "Welcome to BlackJack!"

suits = ["hearts", "spades", "diamonds", "clubs"]
cards = ["2", "3", "4", "5", "6", "7", "8", "9", "J", "Q", "K", "A"]
deck = cards.product(suits)
deck.shuffle!

player_cards = []
dealer_cards = []


player_cards << deck.pop
dealer_cards << deck.pop
player_cards << deck.pop
dealer_cards << deck.pop


player_total = calculate_total(player_cards)
dealer_total = calculate_total(dealer_cards)

puts "Dealer has #{dealer_cards[0]} and #{dealer_cards[1]}, for a total value of #{dealer_total}"
puts "You have #{player_cards[0]} and #{player_cards[1]}, for a total value of #{player_total}"

#player_turn 
  if player_total == 21
    puts "You win!"
    exit
  end

while player_total < 21
  puts "hit or stick?"
  hit_stick = gets.chomp

  if !['hit', 'stick'].include?(hit_stick) 
    puts "Please choose either 'hit' or 'stick'"
    next
  end

  if hit_stick == 'stick'
    puts "You chose to stick"
    break
  end

#Player chose to hit.

  new_card = deck.pop
  player_cards << new_card
  player_total = calculate_total(player_cards)
  puts "You've been dealt #{new_card}. Your total is now #{player_total}"

  if player_total == 21
    puts "You hit BlackJack. You win!"
    exit
  elsif 
    player_total > 21
    puts "You bust!"
    exit
  end
end

#Dealer turn

if dealer_total == 21
  puts "Dealer hit BlackJack. You lose."
  exit 
end

while dealer_total < 17
  new_card = deck.pop
  dealer_cards << new_card
  dealer_total = calculate_total(dealer_cards)
  puts "Dealer has been dealt #{new_card}. Dealer's total is now #{dealer_total}"

  if dealer_total == 21
    puts "Dealer hit BlackJack. You lose."
  elsif dealer_total > 21
    puts "Dealer bust. You win!"
    exit
  end
end

#Compare hands

puts "Dealer's hand:"
dealer_cards.each do |card|
  puts "#{card}" 
end

puts "for a total value of #{dealer_total}"

puts "Player's hand:"
player_cards.each do |card|
  puts"#{card}" 
end

puts "for a total value of #{player_total}"

if dealer_total < player_total
  puts "You win!"
elsif dealer_total > player_total
  puts "You lose!"
else
  "It's a tie!"
end
exit


#begin
  #puts "hit or stick?"
  #hit_stick = gets.chomp
    #if hit_stick == "hit"
      #player_cards << deck.pop
      #puts player_cards.to_s 
      #puts "#{player_total}"
      #calculate_total(cards)
    #end
  #end until hit_stick == "stick" #|| player_total > 21



    








