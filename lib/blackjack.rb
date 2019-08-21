def welcome
  # code #welcome here
  puts("Welcome to the Blackjack Table");
end;

def deal_card
  # code #deal_card here
  return(rand(1..11));
end;

def display_card_total(card_sum)
  # code #display_card_total here
  puts("Your cards add up to #{card_sum}");
end;

def prompt_user
  # code #prompt_user here
  puts("Type 'h' to hit or 's' to stay");
end;

def get_user_input
  # code #get_user_input here
  gets.chomp;
end;

def end_game(bust_total)
  # code #end_game here
  puts("Sorry, you hit #{bust_total}. Thanks for playing!");
end;

def initial_round
  # code #initial_round here
  initial_cards_dealt = deal_card + deal_card;
  display_card_total(initial_cards_dealt);
  return(initial_cards_dealt);
end;

def hit?(card_total)
  prompt_user
  user_input = get_user_input;

  case user_input;
  when("h" || "H");
    card_total += deal_card;
  when("s" || "S");
    card_total;
  else
    invalid_command;
    hit?(card_total);
  end;

end;

def invalid_command
  # code invalid_command here
   puts("Please enter a valid command");
end;

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  twenty_one_total = initial_round
  while (twenty_one_total < 21);
    twenty_one_total = hit?(twenty_one_total)
    display_card_total(twenty_one_total)
  end;
  end_game(twenty_one_total);
end;
