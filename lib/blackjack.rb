def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  r_num = rand(12)
  while r_num == 0 do
    r_num = rand(12)
  end
  r_num 
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  s = gets.chomp 
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  answer = get_user_input 
  if answer == 's'
    return card_total
  elsif answer == 'h'
    return card_total + deal_card
  else
    invalid_command
    prompt_user
    get_user_input
  end
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner 
  welcome
  sum = initial_round
  while sum < 21 do 
    temp_sum =hit?(sum)
    if temp_sum == sum 
      prompt_user
      ans = get_user_input
      if ans == 's'
        break
      end
    else
      sum = temp_sum
    end
    display_card_total(sum)
  end 
  end_game(sum)
  
end
    
