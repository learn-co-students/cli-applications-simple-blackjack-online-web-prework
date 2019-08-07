def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand 1..11
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
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
end

def hit? (card_total)
  prompt_user
  choice = get_user_input
  if choice == 'h'.downcase
    card_total += deal_card
  elsif choice =='s'.downcase
    card_total
  else
    invalid_command
    prompt_user
    choice = get_user_input
  end
  card_total
end

def invalid_command
  puts  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  starting_total = initial_round
  final_total = hit?(starting_total)
  display_card_total(final_total)
  if final_total > 21
    end_game(final_total)
  end 
end
    
