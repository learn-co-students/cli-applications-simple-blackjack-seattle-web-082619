require_relative "blackjack.rb"

runner

# def hit?(card_total)
#   prompt_user
#   input = get_user_input
#   if input != "h" && input != "s"
#     invalid_command
#     prompt_user
#     input = get_user_input
#   elsif input == "s"
#     card_total
#     prompt_user
#     input = get_user_input
#   end
#
#   if input == "h"
#     new_card = deal_card
#     card_total += new_card
#     card_total
#   end
#
#   return card_total
# end
