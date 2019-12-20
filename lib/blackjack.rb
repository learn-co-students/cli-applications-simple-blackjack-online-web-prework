require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(score)
  # code #end_game here
  puts "Sorry, you hit #{score}. Thanks for playing!"
end

def initial_round
  total = deal_card
  total += deal_card
  display_card_total(total)
  total
  # binding.pry
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  else
    invalid_command
    hit?(total)
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
  total = initial_round
  # binding.pry
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
  
end
    
# binding.pry