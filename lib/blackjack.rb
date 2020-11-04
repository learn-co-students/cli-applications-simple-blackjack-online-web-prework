require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1...11)

end

def display_card_total(total)
  # code #display_card_total here

  puts "Your cards add up to #{total}"

end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(number)
  # code #end_game here
  card_total=number
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card+deal_card
  # return sum
  display_card_total(sum)
  return sum

end

def hit?(number)
  # code hit? here

  prompt_user
  user_input=get_user_input

  if user_input == "h"
     number+=deal_card

  elsif user_input == "s"
     number
  else
    invalid_command
    # prompt_user
    hit?(number)
  end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  until sum > 21
    sum=hit?(sum)
    display_card_total(sum)
  end
end_game(sum)
end
