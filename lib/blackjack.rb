def welcome
    puts "Welcome to the Blackjack Table" # code #welcome here
end

def deal_card
  1 + rand(11)  # code #deal_card here
end

def display_card_total(card)
  puts "Your cards add up to #{card}"  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"  # code #prompt_user here
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  print display_card_total(sum)
  sum
end

def hit?(total)
prompt_user
answer = get_user_input

  if answer == "s"
    total
  elsif answer == "h"
    total += deal_card
    total
  else
    puts invalid_command
    puts prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
  end
end_game(total)  # code runner here
end
