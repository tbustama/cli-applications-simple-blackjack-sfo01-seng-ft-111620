def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(num)
  # code #display_card_total here
  puts "Your cards add up to #{num}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  num = deal_card
  num += deal_card
  display_card_total(num)
  num
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(number)
  # code hit? here
  prompt_user
  hit_stay = get_user_input
  until hit_stay =='h' || hit_stay == 's' do 
    invalid_command
    prompt_user
    hit_stay = get_user_input
  end
  if hit_stay == 'h'
    number += deal_card
  end 
  return number
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  num = initial_round
  until num > 21 do 
    num = hit?(num)
    display_card_total(num)
  end
  end_game(num)
end
    
