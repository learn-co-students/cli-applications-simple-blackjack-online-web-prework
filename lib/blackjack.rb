def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_value = rand 1..11
  card_value
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
   user_input = gets.chomp
end

def end_game(card_total)
  puts  "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  total_card = 0
  2.times{ total_card += deal_card}
  display_card_total(total_card)
  total_card
end

def hit?(current)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    current += deal_card
  end
  if input != "h" && input != "s" 
    invalid_command
    prompt_user
  end
  current
end

def invalid_command
  # code invalid_command here
  puts  "Please enter a valid command"
  
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
   welcome 
  
  total = 0
  total += initial_round

  while total < 21 do 
   
   total = hit?(total)
    display_card_total(total)
      
end
end_game(total)
end
    
