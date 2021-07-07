require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
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
  gets.chomp.strip
end

def end_game(z)
  # code #end_game here
  
  puts "Sorry, you hit #{z}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  a = deal_card
  b = deal_card
  sum = a + b
  display_card_total(sum)
  sum
  
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

def hit?(card_total)
  # code hit? here
  prompt_user
  a = get_user_input
  
  if a == 'h'
    card_total += deal_card
  elsif a == 's'
    card_total
  
  else
    invalid_command
    hit?(card_total)
  end
  card_total
  
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  t = initial_round
  until t > 21
    t = hit?(t)
    display_card_total(t)
  end
  end_game(t) 
end
    
