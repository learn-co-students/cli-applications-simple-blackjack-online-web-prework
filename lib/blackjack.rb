require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}" 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input
  gets.chomp # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!" # code #end_game here
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total) # code #initial_round here
  return total
end

def hit?(current_total)
  prompt_user
  user_input = get_user_input
  
  while !(user_input == "h" || user_input == "s") do
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  
  if (user_input == "h")
    next_card = deal_card
    current_total += next_card
  end
  current_total
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
  #binding.pry
  until total > 21 do 
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end# code runner here

    
