require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  if card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  total = 0
  total += deal_card
  total += deal_card
  display_card_total(total)
  return total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  # if input != "h" && input != "s"
  #   invalid_command
  #   prompt_user
  #   input = get_user_input
  # end #if

  if input == "h"
    new_card = deal_card
    card_total += new_card
    card_total
  elsif input == "s"
    card_total
  else
    invalid_command
    prompt_user
    input = get_user_input
  end #if

  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass learbefore coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
