def welcome
  greet = "Welcome to the Blackjack Table"
  puts greet# code #welcome here
end

def deal_card
  card = rand(1..11)
  card
end
#passed
def display_card_total(card_total)
  message = "Your cards add up to #{card_total}"
  puts message
end
#passed
def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end
#passed
def get_user_input
  gets.chomp
end
#passed
def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!" # code #end_game here
end
#passed
def initial_round
  first = deal_card + deal_card
  display_card_total(first)
  return first
end
#passed
def hit?(card_total)
  prompt_user
  
  if get_user_input == "h"
    card_total += deal_card
  elsif get_user_input == "s"
    card_total
  else
    invalid_command
    hit?(card_total)
  end
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
