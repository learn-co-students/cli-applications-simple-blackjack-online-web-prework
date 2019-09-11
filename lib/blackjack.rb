require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  play = gets.chomp
  play
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def invalid_command
  puts 'Please enter a valid command'
end

def hit?(num)
  prompt_user
  play = get_user_input
  if play == 's'
    num
  elsif play == 'h'
    deal_card + num
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  init_total = initial_round
  until init_total > 21
    init_total = hit?(init_total)
    display_card_total(init_total)
    if init_total > 21
      end_game(init_total)
      break
    end
  end
end
    
