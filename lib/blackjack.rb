
def welcome
  puts "Welcome to the Blackjack Table"
end


def deal_card
  rand(1..11)
end


def display_card_total(num)
  puts "Your cards add up to #{num}"
end


def initial_round
  cards = []
  2.times do 
    card = deal_card
    cards << card
  end
  sum = cards.reduce(:+)
  display_card_total(sum)
  sum
end


def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  gets.chomp
end


def invalid_command
  puts "Please enter a valid command"
end


def hit?(num)
  while true do
    prompt_user
    input = get_user_input
    if input == "h"
      card = deal_card
      sum = card + num
      return sum
    elsif input == "s"
      return num
    else
      invalid_command
    end
  end
end


def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end


#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
  end_game(sum)
end
    
