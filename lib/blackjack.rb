def welcome
  puts "welcome"
  # code #welcome here
end

def deal_card
 puts "deal card"
 # code #deal_card here
end

def display_card_total
 puts "display card total"
 # code #display_card_total here
end

def prompt_user
  puts "prompt user"
  # code #prompt_user here
end

def get_user_input
  puts "get user input"
  code #get_user_input here
end

def end_game
  puts "end game"
end

def initial_round
  puts "This is the intitial round"
end

def hit?
  puts "Do you want to hit"
  # code hit? here
end

def invalid_command(error_ message)
  puts "None", #{error_message}
  # code invalid_comma)nd here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  puts "runner"
  
end
  
  
def run_program
  "welcome"
  "deal_card"
  "display_card_total"
  "prompt_user"
  "get_user_input"
   "end_game"
  "initial_round"
  "hit"
  "invalid_command(error_message)"
  "runner"
  # runner file
end



describe "#welcome" do
  it "should display message" do
    expect { Welcome_to_the_Blackjack_Table}.to_not raise_error
  end
 
  it "prints the message to the screen" do
    expect($stdout).to receive(:puts).with("Welcome_to_the_Blackjack_Table")
    .welcome
  end
    
describe "#deal_card" do
  it "accepts one argument, generate random number beween 1-11" do
    expect { deal_card(1,2,3,4,5,6,7,8,9,10,11)}.to_not raise_error
  end
 
  it "prints the value of the cards to the screen" do
    expect($stdout).to receive(:puts).with("Your cards are between 1 and 11")
    deal_card(1,2,3,4,5,6,7,8,9,10,11)
  end
  
  describe "#display_card_total" do
  it "accepts one argument, the card total" do
    expect { display_card_total#{card_total }.to_not raise_error
  end
 
  it "prints the value of the cards to the screen" do
    expect($stdout).to receive(:puts).with#{card_total}
    display_card_total#{card_total}
  end
  
  describe "#prompt_user" do
  it "accepts one argument, to prompt user" do
    expect { prompt user}.to_not raise_error
  end
 
  it "prints to prompts user" do
    expect($stdout).to receive(:puts).with("Yes or No")
    prompt_user(answer)
  end
  
  describe "#end_game" do
  it "accepts one argument, to end the game" do
    expect { end_game}.to_not raise_error
  end
 
  it "prints end game to the screen" do
    expect($stdout).to receive(:puts).with("Game Over")
    end_game
  end
  