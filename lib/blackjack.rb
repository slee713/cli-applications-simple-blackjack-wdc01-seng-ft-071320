def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  hand = rand(1...11)

end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"

end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp
end

def end_game(total_num)
  # code #end_game here
  puts "Sorry, you hit #{total_num}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand1 = deal_card
  hand2 = deal_card
  sum = hand1 + hand2
  display_card_total(sum)
  return sum
end

def hit? (number)
  # code hit? here
  prompt_user
  get_user_input
  if get_user_input == 'h'
    deal_card
    number += deal_card
  elsif get_user_input == 's'
    number
  else
    invalid_command
  end
  number
end

def invalid_command
  # code invalid_command here

    puts "Please enter a valid command"

end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  if display_card_total <21
    hits?
    display_card_total
  elsif display_card_total >= 21
  end_game
end
end
