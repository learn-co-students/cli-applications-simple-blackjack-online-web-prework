def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum 
end

def hit?(num)
  prompt_user
  input = get_user_input
  total = num 
  if input == "s"
    return total  
  elsif input == "h"
    total += deal_card
    return total 
  elsif !(input == "s" && input == "h")
    invalid_command
    hit?(num)
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  num = initial_round
  until num >= 21 do 
    num = hit?(num)
    display_card_total(num)
  end 
  end_game(num)
end
    
