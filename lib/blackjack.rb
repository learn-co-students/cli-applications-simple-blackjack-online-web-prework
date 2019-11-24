def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  
  puts "Your cards add up to #{card_total}"
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
  totals = deal_card + deal_card
  display_card_total(totals)
  totals
end

def hit?(num)
  prompt_user
  name = get_user_input
  if name == 'h'
    return sum = num + deal_card
  elsif name == 's'
    return num
  else   
    puts "Please enter a valid command"
    prompt_user
    name = get_user_input
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
  until total > 21 do 
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
