def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
  return num
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  return display_card_total(deal_card + deal_card)
end

def hit?(num)
  prompt_user
  input = get_user_input
  if input == 'h'
    num += deal_card
  elsif input == 's'
    return num
  else
    invalid_command
    hit?(num)
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
  num = initial_round
  until num > 21 do
    current_num = num
    num = hit?(num)
    if current_num == num
      hit?(num)
    end
    display_card_total(num)
  end
  end_game(num)
end
