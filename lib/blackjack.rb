def welcome
  puts "Welcome to the Blackjack Table";
end

def deal_card
  rand(1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round 
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit? (card_total)
  #prompt_user
  ui = get_user_input
  
  until ["h", "s"].include?(ui)
    invalid_command
    prompt_user
    ui = get_user_input
  end
  
  if ui == 'h'
    card_total += deal_card
  elsif ui == 's'
    puts display_card_total 
    puts "Thanks for playing!"
  end
  
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  prompt_user
  
  until card_total > 21 || get_user_input == 's'
    card_total = hit? (card_total)
    display_card_total(card_total)
  end
  
  end_game(card_total)
end
    
