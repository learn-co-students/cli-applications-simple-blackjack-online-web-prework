def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random_number = rand(1..11)
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    current_card_total += deal_card
  elsif input == "s"
    current_card_total
  else
    invalid_command
    prompt_user
    get_user_input
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
  until initial_round > 21
    hit?(initial_round)
    display_card_total(initial_round)
  end
  end_game(initial_round)
end
