require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1...11)
  # code #deal_card here
end

def display_card_total(card_total)
  #binding.pry
  puts "Your cards add up to #{card_total}"
  # result = nil
  # deal_card.sum do |total|
  # total = result
end
# result
# end
# code #display_card_total here


def welcome
  puts "Welcome to the Blackjack Table" 
end


def prompt_user 
  puts "Type 'h' to hit or 's' to stay"
# display_card_total.length do |data| += 1
#   if 'h' == deal_card.length 
#   elsif 's' == nil
#   end

  #display_card_total.
  # code #prompt_user here
end

def initial_round
first = deal_card + deal_card
display_card_total(first)
return first
end

def get_user_input 
  gets.chomp.strip
  #binding.pry
  # code #get_user_input here
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end
#do total.sum
#end
# code #initial_round here

# looked at solution



def hit?(card_total)
  value = ["h","s"]
  prompt_user
  user = get_user_input 
  #binding.pry
  
  
  if user == "h"
    card_total += deal_card
  elsif user == "s"
    card_total
  else 
    invalid_command
    hit?(card_total)
  end 
  #binding.pry
  #invalid_command  
end
#   while prompt_user do
#     value.include?("s")
#   else data < 20
#    puts "s"
#   end
# end

# if data == "h"
#     card_total += deal_card
#   elsif data == "s"
#     card_total
#   else
#     invalid_command
#     hit?(card_total)
#   end




#prompt_user = data

#(get_user_input)prompt_user
#return prompt_user
# code hit? here

def invalid_command
  puts "Please enter a valid command"
  #invalid_command
  # code invalid_command here
end

#binding.pry
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21
     card_total = hit?(card_total)
    display_card_total (card_total)
  end

   end_game(card_total)
  # code runner here
end
    
