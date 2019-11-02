require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end
 
def deal_card
  card = rand(1..11)
  # code #deal_card here
  if card < 0
  else

    #binding.pry

    return card
   end
   
end
 
def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
  # code #display_card_total here
  #binding.pry
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
   gets.chomp.to_s
  # code #get_user_input here
end

def end_game(card_total)
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
    
  # code #end_game here
end

def initial_round

      sum = deal_card + deal_card
      #puts "/Your cards add up to /"
      display_card_total(sum)
    
   # code #deal_card here 
     sum 
     #binding.pry


    # code #initial_round here
  

    
      
  # code #initial_round here
  

    return sum

end

def hit?(card_total)
    # code hit?(prompt_user)
    puts "Type 'h' to hit or 's' to stay"
    store_input = get_user_input
    if store_input == 'h'
      new_card = deal_card
      card_total += new_card
    elsif store_input == 's'
    card_total
     else
        invalid_command
        hit?(card_total)
        #binding.pry
  end
    card_total
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
  welcome
  card_total = initial_round
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
    end
   end_game(card_total)
end
  
    
