def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand ()
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
 
end

def initial_round
  cards = deal_card + deal_card 
  display_card_total(cards)
  return cards
  end

 


def hit?(h_or_s)
   prompt_user
   j = get_user_input 
    h_or_s
  while j
    if j == 's'
      return h_or_s
    elsif j == 'h'
      a = deal_card
      return h_or_s + a
    else
      puts "Please enter a valid command"
      prompt_user
      j = get_user_input
      return j
    end
  end
end 

def invalid_command
  puts 'Please enter a valid command'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
    welcome
  total = initial_round 
  until total > 21 do 
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
