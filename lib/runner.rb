require_relative "blackjack.rb"
require "pry"
  

def runner
  welcome
  total = initial_round
  
  do 
    binding.pry
    hit?(total)
    display_card_total(total)
    
  until total > 21 
  end_game(total)
end

 