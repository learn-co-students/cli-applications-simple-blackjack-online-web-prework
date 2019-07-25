expect($stdout) .to recieve(:puts).with("Welcome to the Black jack Table")
end
expect(card) .to be > 0 
end
expect { display_card_total(7) } .to_not raise_error
end
#display_card_total prints the value of the cards to the screen
end
#display_card_total does not hardcode the card total
end
expect ($stdout) .to recieve(:puts).with("Type 'h' to hit or 's' to stay")
end
expect (get_user_input) .to eq(string)
end
#end_game prints apology, card total, and thank you message 
end
expect(initial_round) .to eq(12)
end
expect(self) .to recieve(:deal_card) .at_least(:twice).and_return(6)
#####################################################
# get every test to pass before coding runner below #
#####################################################
expect($stdout) .to recieve(:puts).with("Please enter a vlid command")
end
#hit? calls on #prompt_user then #get_user_input
end
#hit? returns an integer which is the card total 
end 
#hit? does not deal another card if user types 's'
end
#hit? deals another card when user types 'h'
end 
#hit displays the invalid command message and prompts the user again if a user inputs something other than 'h' or 's' 
end
expect(self) .to recieve(:deal_card).at_least(3).times.and_return(10)
end
