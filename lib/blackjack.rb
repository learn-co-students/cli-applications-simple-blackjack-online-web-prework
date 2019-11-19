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
def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end
#passed
def hit?(card_total)
  valid_inputs = ["h", "s"]

  prompt_user
  user_input = get_user_input

  until valid_inputs.include?(user_input)
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == "h"
    card_total += deal_card
  end
card_total
end
#passed

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
