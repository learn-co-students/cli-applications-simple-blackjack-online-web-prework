def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1...11
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == 's'
  total
  elsif input == 'h'
  total += deal_card
  else
  invalid_command
  prompt_user
  input = get_user_input
  end
  return total  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  while initial_round < 21
  hit?(total)
  if initial_round > 21
  end_game(total)
  else
  puts "You win you hit 21!"
  end
end