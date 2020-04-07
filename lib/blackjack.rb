require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(11)
  
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input1 = gets.chomp
  user_input1
end

def end_game(deal_card)
  if deal_card > 21
    puts "Sorry, you hit #{deal_card}. Thanks for playing!"
  end 
end

def initial_round
 card_total = 2.times.map{deal_card}.sum
 display_card_total(card_total)
 card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
     
    if user_input == "h"
       sum = card_total + deal_card
     elsif user_input == "s"
       card_total
     else
       until user_input == "h" || user_input == "s" 
       invalid_command
       prompt_user
       user_input = get_user_input
      end 
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
  card_total = initial_round
  
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end