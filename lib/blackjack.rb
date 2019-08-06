
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  generate_random_number = rand(1..11)
  return generate_random_number
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  # code #prompt_user here
  puts"Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end


def initial_round 
 sum =  deal_card + deal_card 
  display_card_total(sum)
  return sum 
end

def hit?(card_total)
  
  prompt_user #ask the user if they want to hit or stay
  
  user_input = get_user_input  # just putting get_ before our user input #set a variable to use for your if/else statement
  
  if user_input == "h"
    card_total += deal_card #increase your former total by the new number given by dealing another card
    
  elsif user_input == "s"
    card_total #return the number and prompt user to hit again
    
  else
    invalid_command
    prompt_user
    get_user_input
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
    card_total = initial_round #current total and tell user their number they have 
      until card_total > 21 #continue game until number exceeds 21
      card_total = hit?(card_total)
      
      display_card_total(card_total)
      end
       end_game(card_total) #prints out once user has lost
end
    
