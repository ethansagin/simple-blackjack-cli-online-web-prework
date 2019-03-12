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

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  first_hand = deal_card + deal_card
  display_card_total(first_hand)
  first_hand
end

def hit?(card_total)
  loop do 
    prompt_user
    get_user_input
    if get_user_input == "h"
      card_total += deal_card
      break
    elsif get_user_input == "s"
      break
    else
      invalid_command
    end
  end
  card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
