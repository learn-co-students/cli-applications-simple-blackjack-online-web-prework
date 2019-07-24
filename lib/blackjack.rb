def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  return card
end

def display_card_total(total)
  card_total = total
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(total)
  card_total = total
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  
  sum = first_card + second_card
  
  display_card_total(sum)
  
  return sum
end

def hit?(card_total)
  
  prompt_user
  user_total = get_user_input
  total = card_total
  
  if user_total == 'h'
    total += deal_card
  elsif user_total = 's'
    
  else 
    invalid_command
    prompt_user
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
  total = initial_round
  
  while total <= 21 do
    total = hit?(total)
    display_card_total(total)
  end
  
  end_game(total)
  
end
    
