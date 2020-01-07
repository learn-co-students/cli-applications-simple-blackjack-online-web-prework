require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1...11)
  # code #deal_card here
end

def display_card_total(deal_card)
  #binding.pry
  puts "Your cards add up to #{deal_card}"
  # result = nil
  # deal_card.sum do |total|
  # total = result
end
# result
# end
# code #display_card_total here

def prompt_user 
  puts "Type 'h' to hit or 's' to stay"
# display_card_total.length do |data| += 1
#   if 'h' == deal_card.length 
#   elsif 's' == nil
#   end

  #display_card_total.
  # code #prompt_user here
end

def get_user_input 
  gets.chomp.strip
  #binding.pry
  # code #get_user_input here
end

def end_game(deal_card)
puts "Sorry, you hit #{deal_card}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
display_card_total(total)
return total

  #do total.sum
#end
  # code #initial_round here
end

# looked at solution

def hit?
  (get_user_input)prompt_user
  return prompt_user
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
