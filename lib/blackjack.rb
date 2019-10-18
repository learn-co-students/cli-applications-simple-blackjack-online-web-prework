def welcome()
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user()
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input()
  user_choice = gets.chomp
  user_choice
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round()
  card_1 = deal_card()
  card_2 = deal_card()
  display_card_total(card_1 + card_2)
  card_1 + card_2
end

def hit?(current_total)
  prompt_user()
  choice = get_user_input()
  new_total = current_total
  if choice == 'h'
    new_card = deal_card()
    new_total += new_card
    display_card_total(new_total)
  elsif choice != 's'
    while choice != 's' and choice != 'h' do
      invalid_command()
      prompt_user()
      choice = get_user_input()
      if choice == 'h'
        new_card = deal_card()
        new_total += new_card
        display_card_total(new_total)
      end #if (inside while)
    end #while
  end #if
  new_total
end #hit? method

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  initial_sum = initial_round()
  sum = initial_sum
  
  while sum <= 21 do
    sum = hit?(sum)
  end #while
  
  end_game(sum)
end #method
    
