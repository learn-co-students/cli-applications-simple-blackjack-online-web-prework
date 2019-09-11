require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand 1 .. 11
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(player_card_total)
  puts "Sorry, you hit #{player_card_total}. Thanks for playing!"
end

def initial_round
    first_round = deal_card
    second_round = deal_card
    sum = first_round + second_round
    display_card_total(sum)
    
    return sum
end

def hit?(card_total)
  prompt_user
  player_input = get_user_input
  
  if player_input == 'h'
    card_total += deal_card
    else if player_input == 's'
      return card_total
    else
      invalid_command
      prompt_user
      get_user_input
    end
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
  card_total = initial_round
 
  if card_total < 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
