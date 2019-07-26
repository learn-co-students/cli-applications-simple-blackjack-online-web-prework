def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
end

def display_card_total total
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game total
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total sum
  sum
end

def hit? current
  i = ''
  loop do
    prompt_user
    i = get_user_input
    #break if i == 's' || 'h'
    return current if i == 's'
    return current + deal_card if i == 'h'
    invalid_command
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
  i = initial_round
  loop do
    break if i > 21
    i = hit? i
    display_card_total i
  end

  end_game i
end
