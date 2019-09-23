def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
deal_card = random(1, 11)
puts "deal_card"
end

def display_card_total()
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts ""Type 'h' to hit or 's' to stay""
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game
  puts "sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
end

def hit?
   puts "Type 'h' to hit"
  # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  Welcome
  deal_card
  display_card_total
  prompt_user
  get_user_input
  end_game
  initial_round
  hit
  invalid_command
  
  
  
  # code runner here
end
    
