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
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  
  if input == 'h'
    new_card_total = deal_card + current_total
  elsif input == 's'
    current_total
  else
    invalid_command
    hit?(current_total)
  end
  
end

def invalid_command
  puts "Please enter a valid command"
end


def runner
  welcome
  total = 0 
  total += initial_round
  
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end 
  
end_game(total)
end
    
