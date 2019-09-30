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
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit? (current_total)
  prompt_user
  user_input = get_user_input
  user_input.strip!
  if user_input == 's'
  elsif user_input == 'h'
    current_total += deal_card
  else
    invalid_command
    hit? (current_total)
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
  while total <= 21 do
    total = hit? ( total )
    display_card_total(total)
  end
  end_game(total)
end
    
