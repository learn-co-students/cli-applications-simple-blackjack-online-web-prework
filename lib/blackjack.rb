def welcome
  puts "Welcome to the Blackjack table!"
end

def deal_card
   (1..11).to_a[1,2,3,4,5,6,7,8,9,10,11]
end

def display_card_total(card_total)
  card total =()
  puts "Your cards add up to {#card total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets (prompt_use output)
end

def end_game(players card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing"
end

def initial_round
  {deal_card + deal_card} = (card_total) 
  puts (display_card_total)
end

def hit? (players current card)
  puts (prompt_user_method)
  get_user_input 
  if get_user_input = 's'
    then do not deal_card
  if get_user_input = 'h'
    then deal_card
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner_blackjack
 
  Welcome
  initial_round
  display_card_total
  prompt_user
  get_user_input
  end_game
end 


  
end
    
