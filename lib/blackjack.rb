require 'pry'
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
 puts  "Your cards add up to #{card_total}" 
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
 sum = deal_card + deal_card
    display_card_total(sum)
    sum
end

def hit?(total)
  prompt_user
  var = get_user_input
  if 'h' == var 
    deal_card + total 
  elsif var == 's' 
    total
  else 
    invalid_command 
    hit?(total)
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
    total = initial_round
    card_total = total 
    until card_total >= 21 
    card_total = hit?(total)
    display_card_total(card_total) 
    
  end
end_game(card_total)
end
    
